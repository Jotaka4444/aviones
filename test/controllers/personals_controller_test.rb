require 'test_helper'

class PersonalsControllerTest < ActionController::TestCase
  setup do
    @personal = personals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal" do
    assert_difference('Personal.count') do
      post :create, personal: { cargo: @personal.cargo, correo: @personal.correo, descripcion: @personal.descripcion, f_nacimiento: @personal.f_nacimiento, n_inlges: @personal.n_inlges, nacionalidad: @personal.nacionalidad, nombre: @personal.nombre, rut: @personal.rut, telefono: @personal.telefono }
    end

    assert_redirected_to personal_path(assigns(:personal))
  end

  test "should show personal" do
    get :show, id: @personal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal
    assert_response :success
  end

  test "should update personal" do
    patch :update, id: @personal, personal: { cargo: @personal.cargo, correo: @personal.correo, descripcion: @personal.descripcion, f_nacimiento: @personal.f_nacimiento, n_inlges: @personal.n_inlges, nacionalidad: @personal.nacionalidad, nombre: @personal.nombre, rut: @personal.rut, telefono: @personal.telefono }
    assert_redirected_to personal_path(assigns(:personal))
  end

  test "should destroy personal" do
    assert_difference('Personal.count', -1) do
      delete :destroy, id: @personal
    end

    assert_redirected_to personals_path
  end
end
