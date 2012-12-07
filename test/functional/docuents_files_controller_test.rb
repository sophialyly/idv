require 'test_helper'

class DocuentsFilesControllerTest < ActionController::TestCase
  setup do
    @docuents_file = docuents_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docuents_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docuents_file" do
    assert_difference('DocuentsFile.count') do
      post :create, docuents_file: @docuents_file.attributes
    end

    assert_redirected_to docuents_file_path(assigns(:docuents_file))
  end

  test "should show docuents_file" do
    get :show, id: @docuents_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @docuents_file
    assert_response :success
  end

  test "should update docuents_file" do
    put :update, id: @docuents_file, docuents_file: @docuents_file.attributes
    assert_redirected_to docuents_file_path(assigns(:docuents_file))
  end

  test "should destroy docuents_file" do
    assert_difference('DocuentsFile.count', -1) do
      delete :destroy, id: @docuents_file
    end

    assert_redirected_to docuents_files_path
  end
end
