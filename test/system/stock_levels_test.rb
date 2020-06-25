require "application_system_test_case"

class StockLevelsTest < ApplicationSystemTestCase
  setup do
    @stock_level = stock_levels(:one)
  end

  test "visiting the index" do
    visit stock_levels_url
    assert_selector "h1", text: "Stock Levels"
  end

  test "creating a Stock level" do
    visit stock_levels_url
    click_on "New Stock Level"

    fill_in "As on", with: @stock_level.as_on
    fill_in "Item", with: @stock_level.item_id
    fill_in "Item type", with: @stock_level.item_type
    fill_in "Quantity", with: @stock_level.quantity
    click_on "Create Stock level"

    assert_text "Stock level was successfully created"
    click_on "Back"
  end

  test "updating a Stock level" do
    visit stock_levels_url
    click_on "Edit", match: :first

    fill_in "As on", with: @stock_level.as_on
    fill_in "Item", with: @stock_level.item_id
    fill_in "Item type", with: @stock_level.item_type
    fill_in "Quantity", with: @stock_level.quantity
    click_on "Update Stock level"

    assert_text "Stock level was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock level" do
    visit stock_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock level was successfully destroyed"
  end
end
