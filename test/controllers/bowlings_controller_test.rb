require 'test_helper'

class BowlingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowling = bowlings(:one)
  end

  test "should get index" do
    get bowlings_url
    assert_response :success
  end

  test "should get new" do
    get new_bowling_url
    assert_response :success
  end

  test "should create bowling" do
    assert_difference('Bowling.count') do
      post bowlings_url, params: { bowling: { bowling_team: @bowling.bowling_team, inning_id: @bowling.inning_id, no_balls: @bowling.no_balls, overs: @bowling.overs, runs: @bowling.runs, wickets: @bowling.wickets, wides: @bowling.wides } }
    end

    assert_redirected_to bowling_url(Bowling.last)
  end

  test "should show bowling" do
    get bowling_url(@bowling)
    assert_response :success
  end

  test "should get edit" do
    get edit_bowling_url(@bowling)
    assert_response :success
  end

  test "should update bowling" do
    patch bowling_url(@bowling), params: { bowling: { bowling_team: @bowling.bowling_team, inning_id: @bowling.inning_id, no_balls: @bowling.no_balls, overs: @bowling.overs, runs: @bowling.runs, wickets: @bowling.wickets, wides: @bowling.wides } }
    assert_redirected_to bowling_url(@bowling)
  end

  test "should destroy bowling" do
    assert_difference('Bowling.count', -1) do
      delete bowling_url(@bowling)
    end

    assert_redirected_to bowlings_url
  end
end
