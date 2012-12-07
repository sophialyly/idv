require 'test_helper'

class DocuentFilesControllerTest < ActionController::TestCase
  setup do
    @docuent_file = docuent_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docuent_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docuent_file" do
    assert_difference('DocuentFile.count') do
      post :create, docuent_file: @docuent_file.attributes
    end

    assert_redirected_to docuent_file_path(assigns(:docuent_file))
  end

  test "should show docuent_file" do
    get :show, id: @docuent_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @docuent_file
    assert_response :success
  end

  test "should update docuent_file" do
    put :update, id: @docuent_file, docuent_file: @docuent_file.attributes
    assert_redirected_to docuent_file_path(assigns(:docuent_file))
  end

  test "should destroy docuent_file" do
    assert_difference('DocuentFile.count', -1) do
      delete :destroy, id: @docuent_file
    end

    assert_redirected_to docuent_files_path
  end
end
