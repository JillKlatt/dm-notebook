require "application_system_test_case"

class CharacterWeaponsTest < ApplicationSystemTestCase
  setup do
    @character_weapon = character_weapons(:one)
  end

  test "visiting the index" do
    visit character_weapons_url
    assert_selector "h1", text: "Character Weapons"
  end

  test "creating a Character weapon" do
    visit character_weapons_url
    click_on "New Character Weapon"

    click_on "Create Character weapon"

    assert_text "Character weapon was successfully created"
    click_on "Back"
  end

  test "updating a Character weapon" do
    visit character_weapons_url
    click_on "Edit", match: :first

    click_on "Update Character weapon"

    assert_text "Character weapon was successfully updated"
    click_on "Back"
  end

  test "destroying a Character weapon" do
    visit character_weapons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character weapon was successfully destroyed"
  end
end
