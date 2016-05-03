require 'test_helper'

class ViewPicturesControllerTest < ActionController::TestCase
  setup do
    @view_picture = view_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:view_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create view_picture" do
    assert_difference('ViewPicture.count') do
      post :create, view_picture: { department_model_id: @view_picture.department_model_id, image_content_type: @view_picture.image_content_type, image_file_name: @view_picture.image_file_name, image_file_size: @view_picture.image_file_size }
    end

    assert_redirected_to view_picture_path(assigns(:view_picture))
  end

  test "should show view_picture" do
    get :show, id: @view_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @view_picture
    assert_response :success
  end

  test "should update view_picture" do
    patch :update, id: @view_picture, view_picture: { department_model_id: @view_picture.department_model_id, image_content_type: @view_picture.image_content_type, image_file_name: @view_picture.image_file_name, image_file_size: @view_picture.image_file_size }
    assert_redirected_to view_picture_path(assigns(:view_picture))
  end

  test "should destroy view_picture" do
    assert_difference('ViewPicture.count', -1) do
      delete :destroy, id: @view_picture
    end

    assert_redirected_to view_pictures_path
  end
end
