require "application_system_test_case"

class FlightsTest < ApplicationSystemTestCase
  setup do
    @flight = flights(:one)
  end

  test "visiting the index" do
    visit flights_url
    assert_selector "h1", text: "Flights"
  end

  test "should create flight" do
    visit flights_url
    click_on "New flight"

    fill_in "Aircraft", with: @flight.aircraft_id
    fill_in "Date", with: @flight.date
    fill_in "From", with: @flight.from
    fill_in "Fuel", with: @flight.fuel
    fill_in "Hobbs", with: @flight.hobbs
    fill_in "Note", with: @flight.note
    fill_in "Oil", with: @flight.oil
    fill_in "Tach", with: @flight.tach
    fill_in "To", with: @flight.to
    click_on "Create Flight"

    assert_text "Flight was successfully created"
    click_on "Back"
  end

  test "should update Flight" do
    visit flight_url(@flight)
    click_on "Edit this flight", match: :first

    fill_in "Aircraft", with: @flight.aircraft_id
    fill_in "Date", with: @flight.date
    fill_in "From", with: @flight.from
    fill_in "Fuel", with: @flight.fuel
    fill_in "Hobbs", with: @flight.hobbs
    fill_in "Note", with: @flight.note
    fill_in "Oil", with: @flight.oil
    fill_in "Tach", with: @flight.tach
    fill_in "To", with: @flight.to
    click_on "Update Flight"

    assert_text "Flight was successfully updated"
    click_on "Back"
  end

  test "should destroy Flight" do
    visit flight_url(@flight)
    click_on "Destroy this flight", match: :first

    assert_text "Flight was successfully destroyed"
  end
end
