require 'test_helper'

class CostSheetItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cost_sheet_item = cost_sheet_items(:one)
  end

  test "should get index" do
    get cost_sheet_items_url
    assert_response :success
  end

  test "should get new" do
    get new_cost_sheet_item_url
    assert_response :success
  end

  test "should create cost_sheet_item" do
    assert_difference('CostSheetItem.count') do
      post cost_sheet_items_url, params: { cost_sheet_item: { active: @cost_sheet_item.active, cost_head_id: @cost_sheet_item.cost_head_id, item_id: @cost_sheet_item.item_id, item_type: @cost_sheet_item.item_type, name: @cost_sheet_item.name, product_id: @cost_sheet_item.product_id, quantity: @cost_sheet_item.quantity, raw_material_id: @cost_sheet_item.raw_material_id, value: @cost_sheet_item.value, version: @cost_sheet_item.version } }
    end

    assert_redirected_to cost_sheet_item_url(CostSheetItem.last)
  end

  test "should show cost_sheet_item" do
    get cost_sheet_item_url(@cost_sheet_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_cost_sheet_item_url(@cost_sheet_item)
    assert_response :success
  end

  test "should update cost_sheet_item" do
    patch cost_sheet_item_url(@cost_sheet_item), params: { cost_sheet_item: { active: @cost_sheet_item.active, cost_head_id: @cost_sheet_item.cost_head_id, item_id: @cost_sheet_item.item_id, item_type: @cost_sheet_item.item_type, name: @cost_sheet_item.name, product_id: @cost_sheet_item.product_id, quantity: @cost_sheet_item.quantity, raw_material_id: @cost_sheet_item.raw_material_id, value: @cost_sheet_item.value, version: @cost_sheet_item.version } }
    assert_redirected_to cost_sheet_item_url(@cost_sheet_item)
  end

  test "should destroy cost_sheet_item" do
    assert_difference('CostSheetItem.count', -1) do
      delete cost_sheet_item_url(@cost_sheet_item)
    end

    assert_redirected_to cost_sheet_items_url
  end
end
