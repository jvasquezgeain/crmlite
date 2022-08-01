require "application_system_test_case"

class CalendarTrackingsTest < ApplicationSystemTestCase
  setup do
    @calendar_tracking = calendar_trackings(:one)
  end

  test "visiting the index" do
    visit calendar_trackings_url
    assert_selector "h1", text: "Calendar trackings"
  end

  test "should create calendar tracking" do
    visit calendar_trackings_url
    click_on "New calendar tracking"

    fill_in "Action", with: @calendar_tracking.action
    fill_in "Agent", with: @calendar_tracking.agent_id
    fill_in "Calendar", with: @calendar_tracking.calendar_id
    fill_in "Comments", with: @calendar_tracking.comments
    fill_in "Day", with: @calendar_tracking.day
    fill_in "Hour", with: @calendar_tracking.hour
    fill_in "Observation", with: @calendar_tracking.observation
    check "Stated at" if @calendar_tracking.stated_at
    fill_in "Type customer", with: @calendar_tracking.type_customer
    fill_in "Type scheduled", with: @calendar_tracking.type_scheduled
    click_on "Create Calendar tracking"

    assert_text "Calendar tracking was successfully created"
    click_on "Back"
  end

  test "should update Calendar tracking" do
    visit calendar_tracking_url(@calendar_tracking)
    click_on "Edit this calendar tracking", match: :first

    fill_in "Action", with: @calendar_tracking.action
    fill_in "Agent", with: @calendar_tracking.agent_id
    fill_in "Calendar", with: @calendar_tracking.calendar_id
    fill_in "Comments", with: @calendar_tracking.comments
    fill_in "Day", with: @calendar_tracking.day
    fill_in "Hour", with: @calendar_tracking.hour
    fill_in "Observation", with: @calendar_tracking.observation
    check "Stated at" if @calendar_tracking.stated_at
    fill_in "Type customer", with: @calendar_tracking.type_customer
    fill_in "Type scheduled", with: @calendar_tracking.type_scheduled
    click_on "Update Calendar tracking"

    assert_text "Calendar tracking was successfully updated"
    click_on "Back"
  end

  test "should destroy Calendar tracking" do
    visit calendar_tracking_url(@calendar_tracking)
    click_on "Destroy this calendar tracking", match: :first

    assert_text "Calendar tracking was successfully destroyed"
  end
end
