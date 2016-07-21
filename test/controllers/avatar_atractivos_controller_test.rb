require 'test_helper'

class AvatarAtractivosControllerTest < ActionController::TestCase
  setup do
    @avatar_atractivo = avatar_atractivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avatar_atractivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avatar_atractivo" do
    assert_difference('AvatarAtractivo.count') do
      post :create, avatar_atractivo: { atractivo_id: @avatar_atractivo.atractivo_id, avatar: @avatar_atractivo.avatar }
    end

    assert_redirected_to avatar_atractivo_path(assigns(:avatar_atractivo))
  end

  test "should show avatar_atractivo" do
    get :show, id: @avatar_atractivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avatar_atractivo
    assert_response :success
  end

  test "should update avatar_atractivo" do
    patch :update, id: @avatar_atractivo, avatar_atractivo: { atractivo_id: @avatar_atractivo.atractivo_id, avatar: @avatar_atractivo.avatar }
    assert_redirected_to avatar_atractivo_path(assigns(:avatar_atractivo))
  end

  test "should destroy avatar_atractivo" do
    assert_difference('AvatarAtractivo.count', -1) do
      delete :destroy, id: @avatar_atractivo
    end

    assert_redirected_to avatar_atractivos_path
  end
end
