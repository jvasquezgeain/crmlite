require "test_helper"

class CalendarTrackingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calendar_tracking = calendar_trackings(:one)
  end

  test "should get index" do
    get calendar_trackings_url
    assert_response :success
  end

  test "should get new" do
    get new_calendar_tracking_url
    assert_response :success
  end

  test "should create calendar_tracking" do
    assert_difference("CalendarTracking.count") do
      post calendar_trackings_url, params: { calendar_tracking: { action: @calendar_tracking.action, agent_id: @calendar_tracking.agent_id, calendar_id: @calendar_tracking.calendar_id, comments: @calendar_tracking.comments, day: @calendar_tracking.day, hour: @calendar_tracking.hour, observation: @calendar_tracking.observation, stated_at: @calendar_tracking.stated_at, type_customer: @calendar_tracking.type_customer, type_scheduled: @calendar_tracking.type_scheduled } }
    end

    assert_redirected_to calendar_tracking_url(CalendarTracking.last)
  end

  test "should show calendar_tracking" do
    get calendar_tracking_url(@calendar_tracking)
    assert_response :success
  end

  test "should get edit" do
    get edit_calendar_tracking_url(@calendar_tracking)
    assert_response :success
  end

  test "should update calendar_tracking" do
    patch calendar_tracking_url(@calendar_tracking), params: { calendar_tracking: { action: @calendar_tracking.action, agent_id: @calendar_tracking.agent_id, calendar_id: @calendar_tracking.calendar_id, comments: @calendar_tracking.comments, day: @calendar_tracking.day, hour: @calendar_tracking.hour, observation: @calendar_tracking.observation, stated_at: @calendar_tracking.stated_at, type_customer: @calendar_tracking.type_customer, type_scheduled: @calendar_tracking.type_scheduled } }
    assert_redirected_to calendar_tracking_url(@calendar_tracking)
  end

  test "should destroy calendar_tracking" do
    assert_difference("CalendarTracking.count", -1) do
      delete calendar_tracking_url(@calendar_tracking)
    end

    assert_redirected_to calendar_trackings_url
  end
end
