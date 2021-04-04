require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get inder" do
    get home_inder_url
    assert_response :success
  end
end
