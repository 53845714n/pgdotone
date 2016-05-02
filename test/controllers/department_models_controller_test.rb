require 'test_helper'

class DepartmentModelsControllerTest < ActionController::TestCase
  setup do
    @department_model = department_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:department_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create department_model" do
    assert_difference('DepartmentModel.count') do
      post :create, department_model: { active: @department_model.active, department_name: @department_model.department_name, description: @department_model.description, roof: @department_model.roof, suite_bath: @department_model.suite_bath, surface: @department_model.surface, total_surface: @department_model.total_surface }
    end

    assert_redirected_to department_model_path(assigns(:department_model))
  end

  test "should show department_model" do
    get :show, id: @department_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @department_model
    assert_response :success
  end

  test "should update department_model" do
    patch :update, id: @department_model, department_model: { active: @department_model.active, department_name: @department_model.department_name, description: @department_model.description, roof: @department_model.roof, suite_bath: @department_model.suite_bath, surface: @department_model.surface, total_surface: @department_model.total_surface }
    assert_redirected_to department_model_path(assigns(:department_model))
  end

  test "should destroy department_model" do
    assert_difference('DepartmentModel.count', -1) do
      delete :destroy, id: @department_model
    end

    assert_redirected_to department_models_path
  end
end
