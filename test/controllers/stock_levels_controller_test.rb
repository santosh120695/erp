require 'test_helper'

class StockLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_level = stock_levels(:one)
  end

  test "should get index" do
    get stock_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_level_url
    assert_response :success
  end

  test "should create stock_level" do
    assert_difference('StockLevel.count') do
      post stock_levels_url, params: { stock_level: { as_on: @stock_level.as_on, item_id: @stock_level.item_id, item_type: @stock_level.item_type, quantity: @stock_level.quantity } }
    end

    assert_redirected_to stock_level_url(StockLevel.last)
  end

  test "should show stock_level" do
    get stock_level_url(@stock_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_level_url(@stock_level)
    assert_response :success
  end

  test "should update stock_level" do
    patch stock_level_url(@stock_level), params: { stock_level: { as_on: @stock_level.as_on, item_id: @stock_level.item_id, item_type: @stock_level.item_type, quantity: @stock_level.quantity } }
    assert_redirected_to stock_level_url(@stock_level)
  end

  test "should destroy stock_level" do
    assert_difference('StockLevel.count', -1) do
      delete stock_level_url(@stock_level)
    end

    assert_redirected_to stock_levels_url
  end
end
