require 'test_helper'

class SuscriptsControllerTest < ActionController::TestCase
  setup do
    @suscript = suscripts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suscripts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suscript" do
    assert_difference('Suscript.count') do
      post :create, suscript: @suscript.attributes
    end

    assert_redirected_to suscript_path(assigns(:suscript))
  end

  test "should show suscript" do
    get :show, id: @suscript
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suscript
    assert_response :success
  end

  test "should update suscript" do
    put :update, id: @suscript, suscript: @suscript.attributes
    assert_redirected_to suscript_path(assigns(:suscript))
  end

  test "should destroy suscript" do
    assert_difference('Suscript.count', -1) do
      delete :destroy, id: @suscript
    end

    assert_redirected_to suscripts_path
  end
end
