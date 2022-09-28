require "test_helper"

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get signups" do
    get subscriptions_signups_url
    assert_response :success
  end
end
