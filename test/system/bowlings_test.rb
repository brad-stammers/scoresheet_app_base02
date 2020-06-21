require "application_system_test_case"

class BowlingsTest < ApplicationSystemTestCase
  setup do
    @bowling = bowlings(:one)
  end

  test "visiting the index" do
    visit bowlings_url
    assert_selector "h1", text: "Bowlings"
  end

  test "creating a Bowling" do
    visit bowlings_url
    click_on "New Bowling"

    fill_in "Bowling team", with: @bowling.bowling_team
    fill_in "Inning", with: @bowling.inning_id
    fill_in "No balls", with: @bowling.no_balls
    fill_in "Overs", with: @bowling.overs
    fill_in "Runs", with: @bowling.runs
    fill_in "Wickets", with: @bowling.wickets
    fill_in "Wides", with: @bowling.wides
    click_on "Create Bowling"

    assert_text "Bowling was successfully created"
    click_on "Back"
  end

  test "updating a Bowling" do
    visit bowlings_url
    click_on "Edit", match: :first

    fill_in "Bowling team", with: @bowling.bowling_team
    fill_in "Inning", with: @bowling.inning_id
    fill_in "No balls", with: @bowling.no_balls
    fill_in "Overs", with: @bowling.overs
    fill_in "Runs", with: @bowling.runs
    fill_in "Wickets", with: @bowling.wickets
    fill_in "Wides", with: @bowling.wides
    click_on "Update Bowling"

    assert_text "Bowling was successfully updated"
    click_on "Back"
  end

  test "destroying a Bowling" do
    visit bowlings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bowling was successfully destroyed"
  end
end
