require "application_system_test_case"

class CharacterlinesTest < ApplicationSystemTestCase
  setup do
    @characterline = characterlines(:one)
  end

  test "visiting the index" do
    visit characterlines_url
    assert_selector "h1", text: "Characterlines"
  end

  test "creating a Characterline" do
    visit characterlines_url
    click_on "New Characterline"

    fill_in "Character", with: @characterline.character
    fill_in "Line", with: @characterline.line
    fill_in "Project", with: @characterline.project_id
    click_on "Create Characterline"

    assert_text "Characterline was successfully created"
    click_on "Back"
  end

  test "updating a Characterline" do
    visit characterlines_url
    click_on "Edit", match: :first

    fill_in "Character", with: @characterline.character
    fill_in "Line", with: @characterline.line
    fill_in "Project", with: @characterline.project_id
    click_on "Update Characterline"

    assert_text "Characterline was successfully updated"
    click_on "Back"
  end

  test "destroying a Characterline" do
    visit characterlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Characterline was successfully destroyed"
  end
end
