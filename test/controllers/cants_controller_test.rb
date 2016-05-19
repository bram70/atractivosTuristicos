require 'test_helper'

class CantsControllerTest < ActionController::TestCase
  setup do
    @cant = cants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cant" do
    assert_difference('Cant.count') do
      post :create, cant: { name: @cant.name, prov_id: @cant.prov_id }
    end

    assert_redirected_to cant_path(assigns(:cant))
  end

  test "should show cant" do
    get :show, id: @cant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cant
    assert_response :success
  end

  test "should update cant" do
    patch :update, id: @cant, cant: { name: @cant.name, prov_id: @cant.prov_id }
    assert_redirected_to cant_path(assigns(:cant))
  end

  test "should destroy cant" do
    assert_difference('Cant.count', -1) do
      delete :destroy, id: @cant
    end

    assert_redirected_to cants_path
  end
end
