require "test_helper"

class FlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight = flights(:one)
  end

  test "should get index" do
    get flights_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_url
    assert_response :success
  end

  test "should create flight" do
    assert_difference("Flight.count") do
      post flights_url, params: { flight: { aircraft_id: @flight.aircraft_id, date: @flight.date, from: @flight.from, fuel: @flight.fuel, hobbs: @flight.hobbs, note: @flight.note, oil: @flight.oil, tach: @flight.tach, to: @flight.to } }
    end

    assert_redirected_to flight_url(Flight.last)
  end

  test "should show flight" do
    get flight_url(@flight)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_url(@flight)
    assert_response :success
  end

  test "should update flight" do
    patch flight_url(@flight), params: { flight: { aircraft_id: @flight.aircraft_id, date: @flight.date, from: @flight.from, fuel: @flight.fuel, hobbs: @flight.hobbs, note: @flight.note, oil: @flight.oil, tach: @flight.tach, to: @flight.to } }
    assert_redirected_to flight_url(@flight)
  end

  test "should destroy flight" do
    assert_difference("Flight.count", -1) do
      delete flight_url(@flight)
    end

    assert_redirected_to flights_url
  end
end
