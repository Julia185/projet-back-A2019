require "application_system_test_case"

class LastNamesTest < ApplicationSystemTestCase
  setup do
    @last_name = last_names(:one)
  end

  test "visiting the index" do
    visit last_names_url
    assert_selector "h1", text: "Last Names"
  end

  test "creating a Last name" do
    visit last_names_url
    click_on "New Last Name"

    fill_in "Birthday", with: @last_name.birthday
    click_on "Create Last name"

    assert_text "Last name was successfully created"
    click_on "Back"
  end

  test "updating a Last name" do
    visit last_names_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @last_name.birthday
    click_on "Update Last name"

    assert_text "Last name was successfully updated"
    click_on "Back"
  end

  test "destroying a Last name" do
    visit last_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Last name was successfully destroyed"
  end
end
