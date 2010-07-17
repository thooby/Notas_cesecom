require 'test_helper'

class TipoNotasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_notas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_nota" do
    assert_difference('TipoNota.count') do
      post :create, :tipo_nota => { }
    end

    assert_redirected_to tipo_nota_path(assigns(:tipo_nota))
  end

  test "should show tipo_nota" do
    get :show, :id => tipo_notas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tipo_notas(:one).to_param
    assert_response :success
  end

  test "should update tipo_nota" do
    put :update, :id => tipo_notas(:one).to_param, :tipo_nota => { }
    assert_redirected_to tipo_nota_path(assigns(:tipo_nota))
  end

  test "should destroy tipo_nota" do
    assert_difference('TipoNota.count', -1) do
      delete :destroy, :id => tipo_notas(:one).to_param
    end

    assert_redirected_to tipo_notas_path
  end
end
