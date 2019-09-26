require 'test_helper'

class MainDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_datum = main_data(:one)
  end

  test "should get index" do
    get main_data_url
    assert_response :success
  end

  test "should get new" do
    get new_main_datum_url
    assert_response :success
  end

  test "should create main_datum" do
    assert_difference('MainDatum.count') do
      post main_data_url, params: { main_datum: { counter: @main_datum.counter, email: @main_datum.email } }
    end

    assert_redirected_to main_datum_url(MainDatum.last)
  end

  test "should show main_datum" do
    get main_datum_url(@main_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_datum_url(@main_datum)
    assert_response :success
  end

  test "should update main_datum" do
    patch main_datum_url(@main_datum), params: { main_datum: { counter: @main_datum.counter, email: @main_datum.email } }
    assert_redirected_to main_datum_url(@main_datum)
  end

  test "should destroy main_datum" do
    assert_difference('MainDatum.count', -1) do
      delete main_datum_url(@main_datum)
    end

    assert_redirected_to main_data_url
  end
end
