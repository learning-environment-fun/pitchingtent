require 'test_helper'

class ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get review_create_url
    assert_response :success
  end

end
