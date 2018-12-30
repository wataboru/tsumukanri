require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { PageNo: @character.PageNo, SL1: @character.SL1, SL2: @character.SL2, SL3: @character.SL3, SL4: @character.SL4, SL5: @character.SL5, SL6: @character.SL6, SLFull: @character.SLFull, Type: @character.Type, firstScore: @character.firstScore, image_name: @character.image_name, maxScore: @character.maxScore, musNum1: @character.musNum1, mustNum2: @character.mustNum2, mustNum3: @character.mustNum3, mustNum4: @character.mustNum4, mustNum5: @character.mustNum5, mustNum6: @character.mustNum6, mustNumChangeFlg: @character.mustNumChangeFlg, name: @character.name, replacename: @character.replacename, skillDetail: @character.skillDetail, upScore: @character.upScore, up_date: @character.up_date } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { PageNo: @character.PageNo, SL1: @character.SL1, SL2: @character.SL2, SL3: @character.SL3, SL4: @character.SL4, SL5: @character.SL5, SL6: @character.SL6, SLFull: @character.SLFull, Type: @character.Type, firstScore: @character.firstScore, image_name: @character.image_name, maxScore: @character.maxScore, musNum1: @character.musNum1, mustNum2: @character.mustNum2, mustNum3: @character.mustNum3, mustNum4: @character.mustNum4, mustNum5: @character.mustNum5, mustNum6: @character.mustNum6, mustNumChangeFlg: @character.mustNumChangeFlg, name: @character.name, replacename: @character.replacename, skillDetail: @character.skillDetail, upScore: @character.upScore, up_date: @character.up_date } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
