require 'test_helper'

class BallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ball = balls(:one)
  end

  test "should get index" do
    get balls_url
    assert_response :success
  end

  test "should get new" do
    get new_ball_url
    assert_response :success
  end

  test "should create ball" do
    assert_difference('Ball.count') do
      post balls_url, params: { ball: { ball_no: @ball.ball_no, batter_out_id: @ball.batter_out_id, bye: @ball.bye, field: @ball.field, how_out: @ball.how_out, leg_bye: @ball.leg_bye, no_ball: @ball.no_ball, non_striker_id: @ball.non_striker_id, over_id: @ball.over_id, runs: @ball.runs, striker_id: @ball.striker_id, wicket: @ball.wicket, wide: @ball.wide } }
    end

    assert_redirected_to ball_url(Ball.last)
  end

  test "should show ball" do
    get ball_url(@ball)
    assert_response :success
  end

  test "should get edit" do
    get edit_ball_url(@ball)
    assert_response :success
  end

  test "should update ball" do
    patch ball_url(@ball), params: { ball: { ball_no: @ball.ball_no, batter_out_id: @ball.batter_out_id, bye: @ball.bye, field: @ball.field, how_out: @ball.how_out, leg_bye: @ball.leg_bye, no_ball: @ball.no_ball, non_striker_id: @ball.non_striker_id, over_id: @ball.over_id, runs: @ball.runs, striker_id: @ball.striker_id, wicket: @ball.wicket, wide: @ball.wide } }
    assert_redirected_to ball_url(@ball)
  end

  test "should destroy ball" do
    assert_difference('Ball.count', -1) do
      delete ball_url(@ball)
    end

    assert_redirected_to balls_url
  end
end
