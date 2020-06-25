require "application_system_test_case"

class RawMaterialPricesTest < ApplicationSystemTestCase
  setup do
    @raw_material_price = raw_material_prices(:one)
  end

  test "visiting the index" do
    visit raw_material_prices_url
    assert_selector "h1", text: "Raw Material Prices"
  end

  test "creating a Raw material price" do
    visit raw_material_prices_url
    click_on "New Raw Material Price"

    fill_in "Price", with: @raw_material_price.price
    fill_in "Price date", with: @raw_material_price.price_date
    fill_in "Raw material", with: @raw_material_price.raw_material_id
    click_on "Create Raw material price"

    assert_text "Raw material price was successfully created"
    click_on "Back"
  end

  test "updating a Raw material price" do
    visit raw_material_prices_url
    click_on "Edit", match: :first

    fill_in "Price", with: @raw_material_price.price
    fill_in "Price date", with: @raw_material_price.price_date
    fill_in "Raw material", with: @raw_material_price.raw_material_id
    click_on "Update Raw material price"

    assert_text "Raw material price was successfully updated"
    click_on "Back"
  end

  test "destroying a Raw material price" do
    visit raw_material_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raw material price was successfully destroyed"
  end
end
