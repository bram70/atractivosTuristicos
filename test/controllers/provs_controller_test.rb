require 'test_helper'

class ProvsControllerTest < ActionController::TestCase
  setup do
    @prov = provs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prov" do
    assert_difference('Prov.count') do
      post :create, prov: { name: @prov.name }
    end

    assert_redirected_to prov_path(assigns(:prov))
  end

  test "should show prov" do
    get :show, id: @prov
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prov
    assert_response :success
  end

  test "should update prov" do
    patch :update, id: @prov, prov: { name: @prov.name }
    assert_redirected_to prov_path(assigns(:prov))
  end

  test "should destroy prov" do
    assert_difference('Prov.count', -1) do
      delete :destroy, id: @prov
    end

    assert_redirected_to provs_path
  end
end
