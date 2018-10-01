require 'test_helper'

class PermissionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get permission_index_url
    assert_response :success
  end

  test "should get create" do
    get permission_create_url
    assert_response :success
  end

  test "should get new" do
    get permission_new_url
    assert_response :success
  end

  test "should get show" do
    get permission_show_url
    assert_response :success
  end

  test "should get edit" do
    get permission_edit_url
    assert_response :success
  end

  test "should get update" do
    get permission_update_url
    assert_response :success
  end

  test "should get destroy" do
    get permission_destroy_url
    assert_response :success
  end

end
