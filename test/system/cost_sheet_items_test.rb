require "application_system_test_case"

class CostSheetItemsTest < ApplicationSystemTestCase
  setup do
    @cost_sheet_item = cost_sheet_items(:one)
  end

  test "visiting the index" do
    visit cost_sheet_items_url
    assert_selector "h1", text: "Cost Sheet Items"
  end

  test "creating a Cost sheet item" do
    visit cost_sheet_items_url
    click_on "New Cost Sheet Item"

    check "Active" if @cost_sheet_item.active
    fill_in "Cost head", with: @cost_sheet_item.cost_head_id
    fill_in "Item", with: @cost_sheet_item.item_id
    fill_in "Item type", with: @cost_sheet_item.item_type
    fill_in "Name", with: @cost_sheet_item.name
    fill_in "Product", with: @cost_sheet_item.product_id
    fill_in "Quantity", with: @cost_sheet_item.quantity
    fill_in "Raw material", with: @cost_sheet_item.raw_material_id
    fill_in "Value", with: @cost_sheet_item.value
    fill_in "Version", with: @cost_sheet_item.version
    click_on "Create Cost sheet item"

    assert_text "Cost sheet item was successfully created"
    click_on "Back"
  end

  test "updating a Cost sheet item" do
    visit cost_sheet_items_url
    click_on "Edit", match: :first

    check "Active" if @cost_sheet_item.active
    fill_in "Cost head", with: @cost_sheet_item.cost_head_id
    fill_in "Item", with: @cost_sheet_item.item_id
    fill_in "Item type", with: @cost_sheet_item.item_type
    fill_in "Name", with: @cost_sheet_item.name
    fill_in "Product", with: @cost_sheet_item.product_id
    fill_in "Quantity", with: @cost_sheet_item.quantity
    fill_in "Raw material", with: @cost_sheet_item.raw_material_id
    fill_in "Value", with: @cost_sheet_item.value
    fill_in "Version", with: @cost_sheet_item.version
    click_on "Update Cost sheet item"

    assert_text "Cost sheet item was successfully updated"
    click_on "Back"
  end

  test "destroying a Cost sheet item" do
    visit cost_sheet_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cost sheet item was successfully destroyed"
  end
end
