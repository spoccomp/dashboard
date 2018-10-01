require 'test_helper'

class UserRoleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_role_index_url
    assert_response :success
  end

  test "should get create" do
    get user_role_create_url
    assert_response :success
  end

  test "should get new" do
    get user_role_new_url
    assert_response :success
  end

  test "should get show" do
    get user_role_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_role_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_role_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_role_destroy_url
    assert_response :success
  end

end
