require 'test_helper'

class PlanePicturesControllerTest < ActionController::TestCase
  setup do
    @plane_picture = plane_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plane_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plane_picture" do
    assert_difference('PlanePicture.count') do
      post :create, plane_picture: { department_model_id: @plane_picture.department_model_id, image_content_type: @plane_picture.image_content_type, image_file_name: @plane_picture.image_file_name, image_file_size: @plane_picture.image_file_size }
    end

    assert_redirected_to plane_picture_path(assigns(:plane_picture))
  end

  test "should show plane_picture" do
    get :show, id: @plane_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plane_picture
    assert_response :success
  end

  test "should update plane_picture" do
    patch :update, id: @plane_picture, plane_picture: { department_model_id: @plane_picture.department_model_id, image_content_type: @plane_picture.image_content_type, image_file_name: @plane_picture.image_file_name, image_file_size: @plane_picture.image_file_size }
    assert_redirected_to plane_picture_path(assigns(:plane_picture))
  end

  test "should destroy plane_picture" do
    assert_difference('PlanePicture.count', -1) do
      delete :destroy, id: @plane_picture
    end

    assert_redirected_to plane_pictures_path
  end
end
