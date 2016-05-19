require 'test_helper'

class CategsControllerTest < ActionController::TestCase
  setup do
    @categ = categs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categ" do
    assert_difference('Categ.count') do
      post :create, categ: { name: @categ.name }
    end

    assert_redirected_to categ_path(assigns(:categ))
  end

  test "should show categ" do
    get :show, id: @categ
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categ
    assert_response :success
  end

  test "should update categ" do
    patch :update, id: @categ, categ: { name: @categ.name }
    assert_redirected_to categ_path(assigns(:categ))
  end

  test "should destroy categ" do
    assert_difference('Categ.count', -1) do
      delete :destroy, id: @categ
    end

    assert_redirected_to categs_path
  end
end
