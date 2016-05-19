require 'test_helper'

class ParrsControllerTest < ActionController::TestCase
  setup do
    @parr = parrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parr" do
    assert_difference('Parr.count') do
      post :create, parr: { cant_id: @parr.cant_id, name: @parr.name }
    end

    assert_redirected_to parr_path(assigns(:parr))
  end

  test "should show parr" do
    get :show, id: @parr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parr
    assert_response :success
  end

  test "should update parr" do
    patch :update, id: @parr, parr: { cant_id: @parr.cant_id, name: @parr.name }
    assert_redirected_to parr_path(assigns(:parr))
  end

  test "should destroy parr" do
    assert_difference('Parr.count', -1) do
      delete :destroy, id: @parr
    end

    assert_redirected_to parrs_path
  end
end
