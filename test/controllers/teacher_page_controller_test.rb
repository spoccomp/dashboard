require 'test_helper'

class TeacherPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_page_index_url
    assert_response :success
  end

  test "should get create" do
    get teacher_page_create_url
    assert_response :success
  end

  test "should get new" do
    get teacher_page_new_url
    assert_response :success
  end

  test "should get show" do
    get teacher_page_show_url
    assert_response :success
  end

  test "should get edit" do
    get teacher_page_edit_url
    assert_response :success
  end

  test "should get update" do
    get teacher_page_update_url
    assert_response :success
  end

  test "should get destroy" do
    get teacher_page_destroy_url
    assert_response :success
  end

end
