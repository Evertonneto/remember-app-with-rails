require "application_system_test_case"

class AnottationsTest < ApplicationSystemTestCase
  setup do
    @anottation = anottations(:one)
  end

  test "visiting the index" do
    visit anottations_url
    assert_selector "h1", text: "Anottations"
  end

  test "should create anottation" do
    visit anottations_url
    click_on "New anottation"

    fill_in "Body", with: @anottation.body
    click_on "Create Anottation"

    assert_text "Anottation was successfully created"
    click_on "Back"
  end

  test "should update Anottation" do
    visit anottation_url(@anottation)
    click_on "Edit this anottation", match: :first

    fill_in "Body", with: @anottation.body
    click_on "Update Anottation"

    assert_text "Anottation was successfully updated"
    click_on "Back"
  end

  test "should destroy Anottation" do
    visit anottation_url(@anottation)
    click_on "Destroy this anottation", match: :first

    assert_text "Anottation was successfully destroyed"
  end
end
