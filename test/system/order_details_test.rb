require "application_system_test_case"

class OrderDetailsTest < ApplicationSystemTestCase
  setup do
    @order_detail = order_details(:one)
  end

  test "visiting the index" do
    visit order_details_url
    assert_selector "h1", text: "Order Details"
  end

  test "creating a Order detail" do
    visit order_details_url
    click_on "New Order Detail"

    fill_in "Amount", with: @order_detail.amount
    fill_in "Discount percentage", with: @order_detail.discount_percentage
    fill_in "Pi", with: @order_detail.pi_id
    fill_in "Product", with: @order_detail.product_id
    fill_in "Quantity", with: @order_detail.quantity
    fill_in "Rate", with: @order_detail.rate
    fill_in "Status", with: @order_detail.status
    fill_in "Tax", with: @order_detail.tax
    fill_in "Total amount", with: @order_detail.total_amount
    click_on "Create Order detail"

    assert_text "Order detail was successfully created"
    click_on "Back"
  end

  test "updating a Order detail" do
    visit order_details_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @order_detail.amount
    fill_in "Discount percentage", with: @order_detail.discount_percentage
    fill_in "Pi", with: @order_detail.pi_id
    fill_in "Product", with: @order_detail.product_id
    fill_in "Quantity", with: @order_detail.quantity
    fill_in "Rate", with: @order_detail.rate
    fill_in "Status", with: @order_detail.status
    fill_in "Tax", with: @order_detail.tax
    fill_in "Total amount", with: @order_detail.total_amount
    click_on "Update Order detail"

    assert_text "Order detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Order detail" do
    visit order_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order detail was successfully destroyed"
  end
end
