require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get index_home_url
    assert_response :success
  end

  test "should get resources" do
    get index_resources_url
    assert_response :success
  end
end
