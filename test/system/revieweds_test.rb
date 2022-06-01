require "application_system_test_case"

class ReviewedsTest < ApplicationSystemTestCase
  setup do
    @reviewed = revieweds(:one)
  end

  test "visiting the index" do
    visit revieweds_url
    assert_selector "h1", text: "Revieweds"
  end

  test "creating a Reviewed" do
    visit revieweds_url
    click_on "New Reviewed"

    fill_in "Comments", with: @reviewed.comments
    click_on "Create Reviewed"

    assert_text "Reviewed was successfully created"
    click_on "Back"
  end

  test "updating a Reviewed" do
    visit revieweds_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @reviewed.comments
    click_on "Update Reviewed"

    assert_text "Reviewed was successfully updated"
    click_on "Back"
  end

  test "destroying a Reviewed" do
    visit revieweds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reviewed was successfully destroyed"
  end
end
