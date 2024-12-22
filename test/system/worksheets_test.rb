require "application_system_test_case"

class WorksheetsTest < ApplicationSystemTestCase
  setup do
    @worksheet = worksheets(:one)
  end

  test "visiting the index" do
    visit worksheets_url
    assert_selector "h1", text: "Worksheets"
  end

  test "should create worksheet" do
    visit worksheets_url
    click_on "New worksheet"

    fill_in "Amplifying information", with: @worksheet.amplifying_information
    check "Commendatory" if @worksheet.commendatory
    fill_in "Commendatory description", with: @worksheet.commendatory_description
    fill_in "From date", with: @worksheet.from_date
    fill_in "Mmsb due date", with: @worksheet.mmsb_due_date
    fill_in "Mro billet", with: @worksheet.mro_billet
    fill_in "Mro component", with: @worksheet.mro_component
    fill_in "Mro name", with: @worksheet.mro_name
    fill_in "Mro rank", with: @worksheet.mro_rank
    fill_in "Mro status", with: @worksheet.mro_status
    fill_in "Mro unit", with: @worksheet.mro_unit
    fill_in "Recommended comments", with: @worksheet.recommended_comments
    fill_in "Recommended comparative assessment", with: @worksheet.recommended_comparative_assessment
    fill_in "Reporting occasion", with: @worksheet.reporting_occasion
    fill_in "Ro billet", with: @worksheet.ro_billet
    fill_in "Ro name", with: @worksheet.ro_name
    fill_in "Ro rank", with: @worksheet.ro_rank
    fill_in "Rs billet", with: @worksheet.rs_billet
    fill_in "Rs name", with: @worksheet.rs_name
    fill_in "Rs rank", with: @worksheet.rs_rank
    fill_in "To date", with: @worksheet.to_date
    click_on "Create Worksheet"

    assert_text "Worksheet was successfully created"
    click_on "Back"
  end

  test "should update Worksheet" do
    visit worksheet_url(@worksheet)
    click_on "Edit this worksheet", match: :first

    fill_in "Amplifying information", with: @worksheet.amplifying_information
    check "Commendatory" if @worksheet.commendatory
    fill_in "Commendatory description", with: @worksheet.commendatory_description
    fill_in "From date", with: @worksheet.from_date.to_s
    fill_in "Mmsb due date", with: @worksheet.mmsb_due_date.to_s
    fill_in "Mro billet", with: @worksheet.mro_billet
    fill_in "Mro component", with: @worksheet.mro_component
    fill_in "Mro name", with: @worksheet.mro_name
    fill_in "Mro rank", with: @worksheet.mro_rank
    fill_in "Mro status", with: @worksheet.mro_status
    fill_in "Mro unit", with: @worksheet.mro_unit
    fill_in "Recommended comments", with: @worksheet.recommended_comments
    fill_in "Recommended comparative assessment", with: @worksheet.recommended_comparative_assessment
    fill_in "Reporting occasion", with: @worksheet.reporting_occasion
    fill_in "Ro billet", with: @worksheet.ro_billet
    fill_in "Ro name", with: @worksheet.ro_name
    fill_in "Ro rank", with: @worksheet.ro_rank
    fill_in "Rs billet", with: @worksheet.rs_billet
    fill_in "Rs name", with: @worksheet.rs_name
    fill_in "Rs rank", with: @worksheet.rs_rank
    fill_in "To date", with: @worksheet.to_date.to_s
    click_on "Update Worksheet"

    assert_text "Worksheet was successfully updated"
    click_on "Back"
  end

  test "should destroy Worksheet" do
    visit worksheet_url(@worksheet)
    click_on "Destroy this worksheet", match: :first

    assert_text "Worksheet was successfully destroyed"
  end
end
