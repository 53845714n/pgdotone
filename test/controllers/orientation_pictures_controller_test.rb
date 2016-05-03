require 'test_helper'

class OrientationPicturesControllerTest < ActionController::TestCase
  setup do
    @orientation_picture = orientation_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orientation_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orientation_picture" do
    assert_difference('OrientationPicture.count') do
      post :create, orientation_picture: { department_model_id: @orientation_picture.department_model_id, image_content_type: @orientation_picture.image_content_type, image_file_name: @orientation_picture.image_file_name, image_file_size: @orientation_picture.image_file_size }
    end

    assert_redirected_to orientation_picture_path(assigns(:orientation_picture))
  end

  test "should show orientation_picture" do
    get :show, id: @orientation_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orientation_picture
    assert_response :success
  end

  test "should update orientation_picture" do
    patch :update, id: @orientation_picture, orientation_picture: { department_model_id: @orientation_picture.department_model_id, image_content_type: @orientation_picture.image_content_type, image_file_name: @orientation_picture.image_file_name, image_file_size: @orientation_picture.image_file_size }
    assert_redirected_to orientation_picture_path(assigns(:orientation_picture))
  end

  test "should destroy orientation_picture" do
    assert_difference('OrientationPicture.count', -1) do
      delete :destroy, id: @orientation_picture
    end

    assert_redirected_to orientation_pictures_path
  end
end
