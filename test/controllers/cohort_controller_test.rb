require 'test_helper'

class CohortControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cohort_index_url
    assert_response :success
  end

  test "should get create" do
    get cohort_create_url
    assert_response :success
  end

  test "should get new" do
    get cohort_new_url
    assert_response :success
  end

  test "should get show" do
    get cohort_show_url
    assert_response :success
  end

  test "should get edit" do
    get cohort_edit_url
    assert_response :success
  end

  test "should get update" do
    get cohort_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cohort_destroy_url
    assert_response :success
  end

end
