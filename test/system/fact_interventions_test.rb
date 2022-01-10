require "application_system_test_case"

class FactInterventionsTest < ApplicationSystemTestCase
  setup do
    @fact_intervention = fact_interventions(:one)
  end

  test "visiting the index" do
    visit fact_interventions_url
    assert_selector "h1", text: "Fact Interventions"
  end

  test "creating a Fact intervention" do
    visit fact_interventions_url
    click_on "New Fact Intervention"

    fill_in "Battery", with: @fact_intervention.battery_id
    fill_in "Building", with: @fact_intervention.building_id
    fill_in "Column", with: @fact_intervention.column_id
    fill_in "Elevator", with: @fact_intervention.elevator_id
    fill_in "Employee", with: @fact_intervention.employee_id
    fill_in "Intervention end date time", with: @fact_intervention.intervention_end_date_time
    fill_in "Intervention start date time", with: @fact_intervention.intervention_start_date_time
    fill_in "Report", with: @fact_intervention.report
    fill_in "Result", with: @fact_intervention.result
    fill_in "Status opt", with: @fact_intervention.status_opt
    click_on "Create Fact intervention"

    assert_text "Fact intervention was successfully created"
    click_on "Back"
  end

  test "updating a Fact intervention" do
    visit fact_interventions_url
    click_on "Edit", match: :first

    fill_in "Battery", with: @fact_intervention.battery_id
    fill_in "Building", with: @fact_intervention.building_id
    fill_in "Column", with: @fact_intervention.column_id
    fill_in "Elevator", with: @fact_intervention.elevator_id
    fill_in "Employee", with: @fact_intervention.employee_id
    fill_in "Intervention end date time", with: @fact_intervention.intervention_end_date_time
    fill_in "Intervention start date time", with: @fact_intervention.intervention_start_date_time
    fill_in "Report", with: @fact_intervention.report
    fill_in "Result", with: @fact_intervention.result
    fill_in "Status opt", with: @fact_intervention.status_opt
    click_on "Update Fact intervention"

    assert_text "Fact intervention was successfully updated"
    click_on "Back"
  end

  test "destroying a Fact intervention" do
    visit fact_interventions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fact intervention was successfully destroyed"
  end
end
