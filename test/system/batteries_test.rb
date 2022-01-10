require "application_system_test_case"

class BatteriesTest < ApplicationSystemTestCase
  setup do
    @battery = batteries(:one)
  end

  test "visiting the index" do
    visit batteries_url
    assert_selector "h1", text: "Batteries"
  end

  test "creating a Battery" do
    visit batteries_url
    click_on "New Battery"

    fill_in "Employeeid", with: @battery.EmployeeId
    fill_in "Information", with: @battery.Information
    fill_in "Informations date", with: @battery.Informations_Date
    fill_in "Notes", with: @battery.Notes
    fill_in "Operation certificate", with: @battery.Operation_Certificate
    fill_in "Status", with: @battery.Status
    fill_in "Type", with: @battery.Type
    click_on "Create Battery"

    assert_text "Battery was successfully created"
    click_on "Back"
  end

  test "updating a Battery" do
    visit batteries_url
    click_on "Edit", match: :first

    fill_in "Employeeid", with: @battery.EmployeeId
    fill_in "Information", with: @battery.Information
    fill_in "Informations date", with: @battery.Informations_Date
    fill_in "Notes", with: @battery.Notes
    fill_in "Operation certificate", with: @battery.Operation_Certificate
    fill_in "Status", with: @battery.Status
    fill_in "Type", with: @battery.Type
    click_on "Update Battery"

    assert_text "Battery was successfully updated"
    click_on "Back"
  end

  test "destroying a Battery" do
    visit batteries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Battery was successfully destroyed"
  end
end
