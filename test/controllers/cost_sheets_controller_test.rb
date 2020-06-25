require 'test_helper'

class CostSheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cost_sheet = cost_sheets(:one)
  end

  test "should get index" do
    get cost_sheets_url
    assert_response :success
  end

  test "should get new" do
    get new_cost_sheet_url
    assert_response :success
  end

  test "should create cost_sheet" do
    assert_difference('CostSheet.count') do
      post cost_sheets_url, params: { cost_sheet: { active: @cost_sheet.active, cost_head_id: @cost_sheet.cost_head_id, item_id: @cost_sheet.item_id, item_type: @cost_sheet.item_type, name: @cost_sheet.name, product_id: @cost_sheet.product_id, quantity: @cost_sheet.quantity, raw_material_id: @cost_sheet.raw_material_id, value: @cost_sheet.value, version: @cost_sheet.version } }
    end

    assert_redirected_to cost_sheet_url(CostSheet.last)
  end

  test "should show cost_sheet" do
    get cost_sheet_url(@cost_sheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_cost_sheet_url(@cost_sheet)
    assert_response :success
  end

  test "should update cost_sheet" do
    patch cost_sheet_url(@cost_sheet), params: { cost_sheet: { active: @cost_sheet.active, cost_head_id: @cost_sheet.cost_head_id, item_id: @cost_sheet.item_id, item_type: @cost_sheet.item_type, name: @cost_sheet.name, product_id: @cost_sheet.product_id, quantity: @cost_sheet.quantity, raw_material_id: @cost_sheet.raw_material_id, value: @cost_sheet.value, version: @cost_sheet.version } }
    assert_redirected_to cost_sheet_url(@cost_sheet)
  end

  test "should destroy cost_sheet" do
    assert_difference('CostSheet.count', -1) do
      delete cost_sheet_url(@cost_sheet)
    end

    assert_redirected_to cost_sheets_url
  end
end
