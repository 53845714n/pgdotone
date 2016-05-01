require 'test_helper'

class ProjectPicturesControllerTest < ActionController::TestCase
  setup do
    @project_picture = project_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_picture" do
    assert_difference('ProjectPicture.count') do
      post :create, project_picture: { image_content_type: @project_picture.image_content_type, image_file_name: @project_picture.image_file_name, image_file_size: @project_picture.image_file_size, project_id: @project_picture.project_id }
    end

    assert_redirected_to project_picture_path(assigns(:project_picture))
  end

  test "should show project_picture" do
    get :show, id: @project_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_picture
    assert_response :success
  end

  test "should update project_picture" do
    patch :update, id: @project_picture, project_picture: { image_content_type: @project_picture.image_content_type, image_file_name: @project_picture.image_file_name, image_file_size: @project_picture.image_file_size, project_id: @project_picture.project_id }
    assert_redirected_to project_picture_path(assigns(:project_picture))
  end

  test "should destroy project_picture" do
    assert_difference('ProjectPicture.count', -1) do
      delete :destroy, id: @project_picture
    end

    assert_redirected_to project_pictures_path
  end
end
