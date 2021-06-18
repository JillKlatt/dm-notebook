require "test_helper"

class CharacterWeaponsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_weapon = character_weapons(:one)
  end

  test "should get index" do
    get character_weapons_url
    assert_response :success
  end

  test "should get new" do
    get new_character_weapon_url
    assert_response :success
  end

  test "should create character_weapon" do
    assert_difference('CharacterWeapon.count') do
      post character_weapons_url, params: { character_weapon: {  } }
    end

    assert_redirected_to character_weapon_url(CharacterWeapon.last)
  end

  test "should show character_weapon" do
    get character_weapon_url(@character_weapon)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_weapon_url(@character_weapon)
    assert_response :success
  end

  test "should update character_weapon" do
    patch character_weapon_url(@character_weapon), params: { character_weapon: {  } }
    assert_redirected_to character_weapon_url(@character_weapon)
  end

  test "should destroy character_weapon" do
    assert_difference('CharacterWeapon.count', -1) do
      delete character_weapon_url(@character_weapon)
    end

    assert_redirected_to character_weapons_url
  end
end
