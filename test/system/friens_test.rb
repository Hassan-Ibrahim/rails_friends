require "application_system_test_case"

class FriensTest < ApplicationSystemTestCase
  setup do
    @frien = friens(:one)
  end

  test "visiting the index" do
    visit friens_url
    assert_selector "h1", text: "Friens"
  end

  test "creating a Frien" do
    visit friens_url
    click_on "New Frien"

    fill_in "Email", with: @frien.email
    fill_in "First name", with: @frien.first_name
    fill_in "Last name", with: @frien.last_name
    fill_in "Phone", with: @frien.phone
    fill_in "Twitter", with: @frien.twitter
    click_on "Create Frien"

    assert_text "Frien was successfully created"
    click_on "Back"
  end

  test "updating a Frien" do
    visit friens_url
    click_on "Edit", match: :first

    fill_in "Email", with: @frien.email
    fill_in "First name", with: @frien.first_name
    fill_in "Last name", with: @frien.last_name
    fill_in "Phone", with: @frien.phone
    fill_in "Twitter", with: @frien.twitter
    click_on "Update Frien"

    assert_text "Frien was successfully updated"
    click_on "Back"
  end

  test "destroying a Frien" do
    visit friens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frien was successfully destroyed"
  end
end
