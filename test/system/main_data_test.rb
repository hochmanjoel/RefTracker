require "application_system_test_case"

class MainDataTest < ApplicationSystemTestCase
  setup do
    @main_datum = main_data(:one)
  end

  test "visiting the index" do
    visit main_data_url
    assert_selector "h1", text: "Main Data"
  end

  test "creating a Main datum" do
    visit main_data_url
    click_on "New Main Datum"

    fill_in "Counter", with: @main_datum.counter
    fill_in "Email", with: @main_datum.email
    click_on "Create Main datum"

    assert_text "Main datum was successfully created"
    click_on "Back"
  end

  test "updating a Main datum" do
    visit main_data_url
    click_on "Edit", match: :first

    fill_in "Counter", with: @main_datum.counter
    fill_in "Email", with: @main_datum.email
    click_on "Update Main datum"

    assert_text "Main datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Main datum" do
    visit main_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main datum was successfully destroyed"
  end
end
