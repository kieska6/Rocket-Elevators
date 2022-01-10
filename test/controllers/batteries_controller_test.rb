require 'test_helper'

class BatteriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battery = batteries(:one)
  end

  test "should get index" do
    get batteries_url
    assert_response :success
  end

  test "should get new" do
    get new_battery_url
    assert_response :success
  end

  test "should create battery" do
    assert_difference('Battery.count') do
      post batteries_url, params: { battery: { EmployeeId: @battery.EmployeeId, Information: @battery.Information, Informations_Date: @battery.Informations_Date, Notes: @battery.Notes, Operation_Certificate: @battery.Operation_Certificate, Status: @battery.Status, Type: @battery.Type } }
    end

    assert_redirected_to battery_url(Battery.last)
  end

  test "should show battery" do
    get battery_url(@battery)
    assert_response :success
  end

  test "should get edit" do
    get edit_battery_url(@battery)
    assert_response :success
  end

  test "should update battery" do
    patch battery_url(@battery), params: { battery: { EmployeeId: @battery.EmployeeId, Information: @battery.Information, Informations_Date: @battery.Informations_Date, Notes: @battery.Notes, Operation_Certificate: @battery.Operation_Certificate, Status: @battery.Status, Type: @battery.Type } }
    assert_redirected_to battery_url(@battery)
  end

  test "should destroy battery" do
    assert_difference('Battery.count', -1) do
      delete battery_url(@battery)
    end

    assert_redirected_to batteries_url
  end
end
