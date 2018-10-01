require 'test_helper'

class EmailPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get email_page_index_url
    assert_response :success
  end

  test "should get create" do
    get email_page_create_url
    assert_response :success
  end

  test "should get new" do
    get email_page_new_url
    assert_response :success
  end

  test "should get show" do
    get email_page_show_url
    assert_response :success
  end

  test "should get edit" do
    get email_page_edit_url
    assert_response :success
  end

  test "should get update" do
    get email_page_update_url
    assert_response :success
  end

  test "should get destroy" do
    get email_page_destroy_url
    assert_response :success
  end

end
