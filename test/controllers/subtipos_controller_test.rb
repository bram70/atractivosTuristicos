require 'test_helper'

class SubtiposControllerTest < ActionController::TestCase
  setup do
    @subtipo = subtipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subtipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subtipo" do
    assert_difference('Subtipo.count') do
      post :create, subtipo: { name: @subtipo.name, tipo_id: @subtipo.tipo_id }
    end

    assert_redirected_to subtipo_path(assigns(:subtipo))
  end

  test "should show subtipo" do
    get :show, id: @subtipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subtipo
    assert_response :success
  end

  test "should update subtipo" do
    patch :update, id: @subtipo, subtipo: { name: @subtipo.name, tipo_id: @subtipo.tipo_id }
    assert_redirected_to subtipo_path(assigns(:subtipo))
  end

  test "should destroy subtipo" do
    assert_difference('Subtipo.count', -1) do
      delete :destroy, id: @subtipo
    end

    assert_redirected_to subtipos_path
  end
end
