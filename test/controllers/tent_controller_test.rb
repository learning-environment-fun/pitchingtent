require 'test_helper'

class TentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tent_index_url
    assert_response :success
  end

  test "should get show" do
    get tent_show_url
    assert_response :success
  end

  test "should get new" do
    get tent_new_url
    assert_response :success
  end

  test "should get create" do
    get tent_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tent_destroy_url
    assert_response :success
  end

  test "should get update" do
    get tent_update_url
    assert_response :success
  end

  test "should get edit" do
    get tent_edit_url
    assert_response :success
  end

end
