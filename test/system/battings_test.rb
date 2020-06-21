require "application_system_test_case"

class BattingsTest < ApplicationSystemTestCase
  setup do
    @batting = battings(:one)
  end

  test "visiting the index" do
    visit battings_url
    assert_selector "h1", text: "Battings"
  end

  test "creating a Batting" do
    visit battings_url
    click_on "New Batting"

    fill_in "Batting team", with: @batting.batting_team
    fill_in "Byes", with: @batting.byes
    fill_in "Inning", with: @batting.inning_id
    fill_in "Leg byes", with: @batting.leg_byes
    fill_in "Overs", with: @batting.overs
    fill_in "Runs", with: @batting.runs
    fill_in "Wickets", with: @batting.wickets
    click_on "Create Batting"

    assert_text "Batting was successfully created"
    click_on "Back"
  end

  test "updating a Batting" do
    visit battings_url
    click_on "Edit", match: :first

    fill_in "Batting team", with: @batting.batting_team
    fill_in "Byes", with: @batting.byes
    fill_in "Inning", with: @batting.inning_id
    fill_in "Leg byes", with: @batting.leg_byes
    fill_in "Overs", with: @batting.overs
    fill_in "Runs", with: @batting.runs
    fill_in "Wickets", with: @batting.wickets
    click_on "Update Batting"

    assert_text "Batting was successfully updated"
    click_on "Back"
  end

  test "destroying a Batting" do
    visit battings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Batting was successfully destroyed"
  end
end
