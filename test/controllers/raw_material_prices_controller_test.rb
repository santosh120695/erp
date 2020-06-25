require 'test_helper'

class RawMaterialPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raw_material_price = raw_material_prices(:one)
  end

  test "should get index" do
    get raw_material_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_raw_material_price_url
    assert_response :success
  end

  test "should create raw_material_price" do
    assert_difference('RawMaterialPrice.count') do
      post raw_material_prices_url, params: { raw_material_price: { price: @raw_material_price.price, price_date: @raw_material_price.price_date, raw_material_id: @raw_material_price.raw_material_id } }
    end

    assert_redirected_to raw_material_price_url(RawMaterialPrice.last)
  end

  test "should show raw_material_price" do
    get raw_material_price_url(@raw_material_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_raw_material_price_url(@raw_material_price)
    assert_response :success
  end

  test "should update raw_material_price" do
    patch raw_material_price_url(@raw_material_price), params: { raw_material_price: { price: @raw_material_price.price, price_date: @raw_material_price.price_date, raw_material_id: @raw_material_price.raw_material_id } }
    assert_redirected_to raw_material_price_url(@raw_material_price)
  end

  test "should destroy raw_material_price" do
    assert_difference('RawMaterialPrice.count', -1) do
      delete raw_material_price_url(@raw_material_price)
    end

    assert_redirected_to raw_material_prices_url
  end
end
