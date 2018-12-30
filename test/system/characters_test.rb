require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Pageno", with: @character.PageNo
    fill_in "Sl1", with: @character.SL1
    fill_in "Sl2", with: @character.SL2
    fill_in "Sl3", with: @character.SL3
    fill_in "Sl4", with: @character.SL4
    fill_in "Sl5", with: @character.SL5
    fill_in "Sl6", with: @character.SL6
    fill_in "Slfull", with: @character.SLFull
    fill_in "Type", with: @character.Type
    fill_in "Firstscore", with: @character.firstScore
    fill_in "Image name", with: @character.image_name
    fill_in "Maxscore", with: @character.maxScore
    fill_in "Musnum1", with: @character.musNum1
    fill_in "Mustnum2", with: @character.mustNum2
    fill_in "Mustnum3", with: @character.mustNum3
    fill_in "Mustnum4", with: @character.mustNum4
    fill_in "Mustnum5", with: @character.mustNum5
    fill_in "Mustnum6", with: @character.mustNum6
    fill_in "Mustnumchangeflg", with: @character.mustNumChangeFlg
    fill_in "Name", with: @character.name
    fill_in "Replacename", with: @character.replacename
    fill_in "Skilldetail", with: @character.skillDetail
    fill_in "Upscore", with: @character.upScore
    fill_in "Up date", with: @character.up_date
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Pageno", with: @character.PageNo
    fill_in "Sl1", with: @character.SL1
    fill_in "Sl2", with: @character.SL2
    fill_in "Sl3", with: @character.SL3
    fill_in "Sl4", with: @character.SL4
    fill_in "Sl5", with: @character.SL5
    fill_in "Sl6", with: @character.SL6
    fill_in "Slfull", with: @character.SLFull
    fill_in "Type", with: @character.Type
    fill_in "Firstscore", with: @character.firstScore
    fill_in "Image name", with: @character.image_name
    fill_in "Maxscore", with: @character.maxScore
    fill_in "Musnum1", with: @character.musNum1
    fill_in "Mustnum2", with: @character.mustNum2
    fill_in "Mustnum3", with: @character.mustNum3
    fill_in "Mustnum4", with: @character.mustNum4
    fill_in "Mustnum5", with: @character.mustNum5
    fill_in "Mustnum6", with: @character.mustNum6
    fill_in "Mustnumchangeflg", with: @character.mustNumChangeFlg
    fill_in "Name", with: @character.name
    fill_in "Replacename", with: @character.replacename
    fill_in "Skilldetail", with: @character.skillDetail
    fill_in "Upscore", with: @character.upScore
    fill_in "Up date", with: @character.up_date
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
