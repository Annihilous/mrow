require "test_helper"

class WorksheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worksheet = worksheets(:one)
  end

  test "should get index" do
    get worksheets_url
    assert_response :success
  end

  test "should get new" do
    get new_worksheet_url
    assert_response :success
  end

  test "should create worksheet" do
    assert_difference("Worksheet.count") do
      post worksheets_url, params: { worksheet: { amplifying_information: @worksheet.amplifying_information, commendatory: @worksheet.commendatory, commendatory_description: @worksheet.commendatory_description, from_date: @worksheet.from_date, mmsb_due_date: @worksheet.mmsb_due_date, mro_billet: @worksheet.mro_billet, mro_component: @worksheet.mro_component, mro_name: @worksheet.mro_name, mro_rank: @worksheet.mro_rank, mro_status: @worksheet.mro_status, mro_unit: @worksheet.mro_unit, recommended_comments: @worksheet.recommended_comments, recommended_comparative_assessment: @worksheet.recommended_comparative_assessment, reporting_occasion: @worksheet.reporting_occasion, ro_billet: @worksheet.ro_billet, ro_name: @worksheet.ro_name, ro_rank: @worksheet.ro_rank, rs_billet: @worksheet.rs_billet, rs_name: @worksheet.rs_name, rs_rank: @worksheet.rs_rank, to_date: @worksheet.to_date } }
    end

    assert_redirected_to worksheet_url(Worksheet.last)
  end

  test "should show worksheet" do
    get worksheet_url(@worksheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_worksheet_url(@worksheet)
    assert_response :success
  end

  test "should update worksheet" do
    patch worksheet_url(@worksheet), params: { worksheet: { amplifying_information: @worksheet.amplifying_information, commendatory: @worksheet.commendatory, commendatory_description: @worksheet.commendatory_description, from_date: @worksheet.from_date, mmsb_due_date: @worksheet.mmsb_due_date, mro_billet: @worksheet.mro_billet, mro_component: @worksheet.mro_component, mro_name: @worksheet.mro_name, mro_rank: @worksheet.mro_rank, mro_status: @worksheet.mro_status, mro_unit: @worksheet.mro_unit, recommended_comments: @worksheet.recommended_comments, recommended_comparative_assessment: @worksheet.recommended_comparative_assessment, reporting_occasion: @worksheet.reporting_occasion, ro_billet: @worksheet.ro_billet, ro_name: @worksheet.ro_name, ro_rank: @worksheet.ro_rank, rs_billet: @worksheet.rs_billet, rs_name: @worksheet.rs_name, rs_rank: @worksheet.rs_rank, to_date: @worksheet.to_date } }
    assert_redirected_to worksheet_url(@worksheet)
  end

  test "should destroy worksheet" do
    assert_difference("Worksheet.count", -1) do
      delete worksheet_url(@worksheet)
    end

    assert_redirected_to worksheets_url
  end
end
