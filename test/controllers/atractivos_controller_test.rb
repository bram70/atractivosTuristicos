require 'test_helper'

class AtractivosControllerTest < ActionController::TestCase
  setup do
    @atractivo = atractivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atractivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atractivo" do
    assert_difference('Atractivo.count') do
      post :create, atractivo: { cant_id: @atractivo.cant_id, categ_id: @atractivo.categ_id, description: @atractivo.description, name: @atractivo.name, parr_id: @atractivo.parr_id, prov_id: @atractivo.prov_id, subtipo_id: @atractivo.subtipo_id, tipo_id: @atractivo.tipo_id }
    end

    assert_redirected_to atractivo_path(assigns(:atractivo))
  end

  test "should show atractivo" do
    get :show, id: @atractivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atractivo
    assert_response :success
  end

  test "should update atractivo" do
    patch :update, id: @atractivo, atractivo: { cant_id: @atractivo.cant_id, categ_id: @atractivo.categ_id, description: @atractivo.description, name: @atractivo.name, parr_id: @atractivo.parr_id, prov_id: @atractivo.prov_id, subtipo_id: @atractivo.subtipo_id, tipo_id: @atractivo.tipo_id }
    assert_redirected_to atractivo_path(assigns(:atractivo))
  end

  test "should destroy atractivo" do
    assert_difference('Atractivo.count', -1) do
      delete :destroy, id: @atractivo
    end

    assert_redirected_to atractivos_path
  end
end
