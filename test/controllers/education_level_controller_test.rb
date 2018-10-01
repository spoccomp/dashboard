require 'test_helper'

class EducationLevelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get education_level_index_url
    assert_response :success
  end

  test "should get create" do
    get education_level_create_url
    assert_response :success
  end

  test "should get new" do
    get education_level_new_url
    assert_response :success
  end

  test "should get show" do
    get education_level_show_url
    assert_response :success
  end

  test "should get edit" do
    get education_level_edit_url
    assert_response :success
  end

  test "should get update" do
    get education_level_update_url
    assert_response :success
  end

  test "should get destroy" do
    get education_level_destroy_url
    assert_response :success
  end

end
