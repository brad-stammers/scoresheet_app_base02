require "application_system_test_case"

class BallsTest < ApplicationSystemTestCase
  setup do
    @ball = balls(:one)
  end

  test "visiting the index" do
    visit balls_url
    assert_selector "h1", text: "Balls"
  end

  test "creating a Ball" do
    visit balls_url
    click_on "New Ball"

    fill_in "Ball no", with: @ball.ball_no
    fill_in "Batter out", with: @ball.batter_out_id
    fill_in "Bye", with: @ball.bye
    fill_in "Field", with: @ball.field
    fill_in "How out", with: @ball.how_out
    fill_in "Leg bye", with: @ball.leg_bye
    check "No ball" if @ball.no_ball
    fill_in "Non striker", with: @ball.non_striker_id
    fill_in "Over", with: @ball.over_id
    fill_in "Runs", with: @ball.runs
    fill_in "Striker", with: @ball.striker_id
    check "Wicket" if @ball.wicket
    check "Wide" if @ball.wide
    click_on "Create Ball"

    assert_text "Ball was successfully created"
    click_on "Back"
  end

  test "updating a Ball" do
    visit balls_url
    click_on "Edit", match: :first

    fill_in "Ball no", with: @ball.ball_no
    fill_in "Batter out", with: @ball.batter_out_id
    fill_in "Bye", with: @ball.bye
    fill_in "Field", with: @ball.field
    fill_in "How out", with: @ball.how_out
    fill_in "Leg bye", with: @ball.leg_bye
    check "No ball" if @ball.no_ball
    fill_in "Non striker", with: @ball.non_striker_id
    fill_in "Over", with: @ball.over_id
    fill_in "Runs", with: @ball.runs
    fill_in "Striker", with: @ball.striker_id
    check "Wicket" if @ball.wicket
    check "Wide" if @ball.wide
    click_on "Update Ball"

    assert_text "Ball was successfully updated"
    click_on "Back"
  end

  test "destroying a Ball" do
    visit balls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ball was successfully destroyed"
  end
end
