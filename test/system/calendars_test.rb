require "application_system_test_case"

class CalendarsTest < ApplicationSystemTestCase
  setup do
    @calendar = calendars(:one)
  end

  test "visiting the index" do
    visit calendars_url
    assert_selector "h1", text: "Calendars"
  end

  test "should create calendar" do
    visit calendars_url
    click_on "New calendar"

    fill_in "Address", with: @calendar.address
    fill_in "Agent", with: @calendar.agent_id
    fill_in "Assigned by", with: @calendar.assigned_by_id
    fill_in "Company", with: @calendar.company
    fill_in "Contact", with: @calendar.contact
    fill_in "Day", with: @calendar.day
    fill_in "Hour", with: @calendar.hour
    fill_in "Job title", with: @calendar.job_title
    fill_in "Observation", with: @calendar.observation
    fill_in "Phone", with: @calendar.phone
    check "Stated at" if @calendar.stated_at
    fill_in "Type customer", with: @calendar.type_customer
    fill_in "Type scheduled", with: @calendar.type_scheduled
    click_on "Create Calendar"

    assert_text "Calendar was successfully created"
    click_on "Back"
  end

  test "should update Calendar" do
    visit calendar_url(@calendar)
    click_on "Edit this calendar", match: :first

    fill_in "Address", with: @calendar.address
    fill_in "Agent", with: @calendar.agent_id
    fill_in "Assigned by", with: @calendar.assigned_by_id
    fill_in "Company", with: @calendar.company
    fill_in "Contact", with: @calendar.contact
    fill_in "Day", with: @calendar.day
    fill_in "Hour", with: @calendar.hour
    fill_in "Job title", with: @calendar.job_title
    fill_in "Observation", with: @calendar.observation
    fill_in "Phone", with: @calendar.phone
    check "Stated at" if @calendar.stated_at
    fill_in "Type customer", with: @calendar.type_customer
    fill_in "Type scheduled", with: @calendar.type_scheduled
    click_on "Update Calendar"

    assert_text "Calendar was successfully updated"
    click_on "Back"
  end

  test "should destroy Calendar" do
    visit calendar_url(@calendar)
    click_on "Destroy this calendar", match: :first

    assert_text "Calendar was successfully destroyed"
  end
end
