# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fit => [100, 100]
  end

  def resize_to_fit(width, height)
    manipulate! do |img|
      img.resize_to_fit!(width, height)
      img = yield(img) if block_given?
      img
    end
  end

  def manipulate!(options={}, &block)
    cache_stored_file! if !cached?

    read_block = create_info_block(options[:read])
    image = ::Magick::Image.read(current_path, &read_block)
    frames = ::Magick::ImageList.new

    image.each_with_index do |frame, index|
      frame = yield *[frame, index, options].take(block.arity) if block_given?
      frames << frame if frame
    end
    frames.append(true) if block_given?

    write_block = create_info_block(options[:write])

    if options[:format] || @format
      frames.write("#{options[:format] || @format}:#{current_path}", &write_block)
      move_to = current_path.chomp(File.extname(current_path)) + ".#{options[:format] || @format}"
      file.move_to(move_to, permissions, directory_permissions)
    else
      frames.write(current_path, &write_block)
    end

    destroy_image(frames)
  rescue ::Magick::ImageMagickError => e
    raise CarrierWave::ProcessingError, I18n.translate(:"errors.messages.rmagick_processing_error", :e => e, :default => I18n.translate(:"errors.messages.rmagick_processing_error", :e => e, :locale => :en))
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
