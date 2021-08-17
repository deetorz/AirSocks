require "test_helper"

class Dashboard::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_bookings_index_url
    assert_response :success
  end
end
