require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get video" do
    get :video
    assert_response :success
  end

  test "should get hymnal" do
    get :hymnal
    assert_response :success
  end

end
