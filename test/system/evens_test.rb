require "application_system_test_case"

class EvensTest < ApplicationSystemTestCase
  setup do
    @even = evens(:one)
  end

  test "visiting the index" do
    visit evens_url
    assert_selector "h1", text: "Evens"
  end

  test "creating a Even" do
    visit evens_url
    click_on "New Even"

    fill_in "Start", with: @even.start
    fill_in "Title", with: @even.title
    click_on "Create Even"

    assert_text "Even was successfully created"
    click_on "Back"
  end

  test "updating a Even" do
    visit evens_url
    click_on "Edit", match: :first

    fill_in "Start", with: @even.start
    fill_in "Title", with: @even.title
    click_on "Update Even"

    assert_text "Even was successfully updated"
    click_on "Back"
  end

  test "destroying a Even" do
    visit evens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Even was successfully destroyed"
  end
end
