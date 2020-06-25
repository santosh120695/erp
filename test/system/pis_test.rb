require "application_system_test_case"

class PisTest < ApplicationSystemTestCase
  setup do
    @pi = pis(:one)
  end

  test "visiting the index" do
    visit pis_url
    assert_selector "h1", text: "Pis"
  end

  test "creating a Pi" do
    visit pis_url
    click_on "New Pi"

    fill_in "Customer", with: @pi.customer_id
    fill_in "Order date", with: @pi.order_date
    fill_in "Reference", with: @pi.reference
    fill_in "Sales person", with: @pi.sales_person
    fill_in "User", with: @pi.user_id
    fill_in "Uuid", with: @pi.uuid
    click_on "Create Pi"

    assert_text "Pi was successfully created"
    click_on "Back"
  end

  test "updating a Pi" do
    visit pis_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @pi.customer_id
    fill_in "Order date", with: @pi.order_date
    fill_in "Reference", with: @pi.reference
    fill_in "Sales person", with: @pi.sales_person
    fill_in "User", with: @pi.user_id
    fill_in "Uuid", with: @pi.uuid
    click_on "Update Pi"

    assert_text "Pi was successfully updated"
    click_on "Back"
  end

  test "destroying a Pi" do
    visit pis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pi was successfully destroyed"
  end
end
