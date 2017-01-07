require 'test_helper'

class ActionStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @action_step = action_steps(:one)
  end

  test "should get index" do
    get action_steps_url, as: :json
    assert_response :success
  end

  test "should create action_step" do
    assert_difference('ActionStep.count') do
      post action_steps_url, params: { action_step: { description: @action_step.description, goal_id: @action_step.goal_id, title: @action_step.title } }, as: :json
    end

    assert_response 201
  end

  test "should show action_step" do
    get action_step_url(@action_step), as: :json
    assert_response :success
  end

  test "should update action_step" do
    patch action_step_url(@action_step), params: { action_step: { description: @action_step.description, goal_id: @action_step.goal_id, title: @action_step.title } }, as: :json
    assert_response 200
  end

  test "should destroy action_step" do
    assert_difference('ActionStep.count', -1) do
      delete action_step_url(@action_step), as: :json
    end

    assert_response 204
  end
end
