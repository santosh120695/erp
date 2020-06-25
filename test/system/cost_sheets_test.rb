require "application_system_test_case"

class CostSheetsTest < ApplicationSystemTestCase
  setup do
    @cost_sheet = cost_sheets(:one)
  end

  test "visiting the index" do
    visit cost_sheets_url
    assert_selector "h1", text: "Cost Sheets"
  end

  test "creating a Cost sheet" do
    visit cost_sheets_url
    click_on "New Cost Sheet"

    check "Active" if @cost_sheet.active
    fill_in "Cost head", with: @cost_sheet.cost_head_id
    fill_in "Item", with: @cost_sheet.item_id
    fill_in "Item type", with: @cost_sheet.item_type
    fill_in "Name", with: @cost_sheet.name
    fill_in "Product", with: @cost_sheet.product_id
    fill_in "Quantity", with: @cost_sheet.quantity
    fill_in "Raw material", with: @cost_sheet.raw_material_id
    fill_in "Value", with: @cost_sheet.value
    fill_in "Version", with: @cost_sheet.version
    click_on "Create Cost sheet"

    assert_text "Cost sheet was successfully created"
    click_on "Back"
  end

  test "updating a Cost sheet" do
    visit cost_sheets_url
    click_on "Edit", match: :first

    check "Active" if @cost_sheet.active
    fill_in "Cost head", with: @cost_sheet.cost_head_id
    fill_in "Item", with: @cost_sheet.item_id
    fill_in "Item type", with: @cost_sheet.item_type
    fill_in "Name", with: @cost_sheet.name
    fill_in "Product", with: @cost_sheet.product_id
    fill_in "Quantity", with: @cost_sheet.quantity
    fill_in "Raw material", with: @cost_sheet.raw_material_id
    fill_in "Value", with: @cost_sheet.value
    fill_in "Version", with: @cost_sheet.version
    click_on "Update Cost sheet"

    assert_text "Cost sheet was successfully updated"
    click_on "Back"
  end

  test "destroying a Cost sheet" do
    visit cost_sheets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cost sheet was successfully destroyed"
  end
end
