require "test_helper"

class CalendarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calendar = calendars(:one)
  end

  test "should get index" do
    get calendars_url
    assert_response :success
  end

  test "should get new" do
    get new_calendar_url
    assert_response :success
  end

  test "should create calendar" do
    assert_difference("Calendar.count") do
      post calendars_url, params: { calendar: { address: @calendar.address, agent_id: @calendar.agent_id, assigned_by_id: @calendar.assigned_by_id, company: @calendar.company, contact: @calendar.contact, day: @calendar.day, hour: @calendar.hour, job_title: @calendar.job_title, observation: @calendar.observation, phone: @calendar.phone, stated_at: @calendar.stated_at, type_customer: @calendar.type_customer, type_scheduled: @calendar.type_scheduled } }
    end

    assert_redirected_to calendar_url(Calendar.last)
  end

  test "should show calendar" do
    get calendar_url(@calendar)
    assert_response :success
  end

  test "should get edit" do
    get edit_calendar_url(@calendar)
    assert_response :success
  end

  test "should update calendar" do
    patch calendar_url(@calendar), params: { calendar: { address: @calendar.address, agent_id: @calendar.agent_id, assigned_by_id: @calendar.assigned_by_id, company: @calendar.company, contact: @calendar.contact, day: @calendar.day, hour: @calendar.hour, job_title: @calendar.job_title, observation: @calendar.observation, phone: @calendar.phone, stated_at: @calendar.stated_at, type_customer: @calendar.type_customer, type_scheduled: @calendar.type_scheduled } }
    assert_redirected_to calendar_url(@calendar)
  end

  test "should destroy calendar" do
    assert_difference("Calendar.count", -1) do
      delete calendar_url(@calendar)
    end

    assert_redirected_to calendars_url
  end
end
