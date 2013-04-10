require 'test_helper'

class IncertVideosControllerTest < ActionController::TestCase
  setup do
    @incert_video = incert_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incert_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incert_video" do
    assert_difference('IncertVideo.count') do
      post :create, incert_video: @incert_video.attributes
    end

    assert_redirected_to incert_video_path(assigns(:incert_video))
  end

  test "should show incert_video" do
    get :show, id: @incert_video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incert_video
    assert_response :success
  end

  test "should update incert_video" do
    put :update, id: @incert_video, incert_video: @incert_video.attributes
    assert_redirected_to incert_video_path(assigns(:incert_video))
  end

  test "should destroy incert_video" do
    assert_difference('IncertVideo.count', -1) do
      delete :destroy, id: @incert_video
    end

    assert_redirected_to incert_videos_path
  end
end
