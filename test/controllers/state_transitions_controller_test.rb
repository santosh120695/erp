require 'test_helper'

class StateTransitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_transition = state_transitions(:one)
  end

  test "should get index" do
    get state_transitions_url
    assert_response :success
  end

  test "should get new" do
    get new_state_transition_url
    assert_response :success
  end

  test "should create state_transition" do
    assert_difference('StateTransition.count') do
      post state_transitions_url, params: { state_transition: { comment: @state_transition.comment, from: @state_transition.from, order_detail_id: @state_transition.order_detail_id, to: @state_transition.to, user_id: @state_transition.user_id } }
    end

    assert_redirected_to state_transition_url(StateTransition.last)
  end

  test "should show state_transition" do
    get state_transition_url(@state_transition)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_transition_url(@state_transition)
    assert_response :success
  end

  test "should update state_transition" do
    patch state_transition_url(@state_transition), params: { state_transition: { comment: @state_transition.comment, from: @state_transition.from, order_detail_id: @state_transition.order_detail_id, to: @state_transition.to, user_id: @state_transition.user_id } }
    assert_redirected_to state_transition_url(@state_transition)
  end

  test "should destroy state_transition" do
    assert_difference('StateTransition.count', -1) do
      delete state_transition_url(@state_transition)
    end

    assert_redirected_to state_transitions_url
  end
end
