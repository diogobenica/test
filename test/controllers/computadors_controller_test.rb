require 'test_helper'

class ComputadorsControllerTest < ActionController::TestCase
  setup do
    @computador = computadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computador" do
    assert_difference('Computador.count') do
      post :create, computador: { cor: @computador.cor, marca: @computador.marca, modelo: @computador.modelo, placa: @computador.placa, serial: @computador.serial }
    end

    assert_redirected_to computador_path(assigns(:computador))
  end

  test "should show computador" do
    get :show, id: @computador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @computador
    assert_response :success
  end

  test "should update computador" do
    patch :update, id: @computador, computador: { cor: @computador.cor, marca: @computador.marca, modelo: @computador.modelo, placa: @computador.placa, serial: @computador.serial }
    assert_redirected_to computador_path(assigns(:computador))
  end

  test "should destroy computador" do
    assert_difference('Computador.count', -1) do
      delete :destroy, id: @computador
    end

    assert_redirected_to computadors_path
  end
end
