require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get music" do
    get :music
    assert_response :success
  end

  test "should get videos" do
    get :videos
    assert_response :success
  end

end
