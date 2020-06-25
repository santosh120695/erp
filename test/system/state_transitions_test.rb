require "application_system_test_case"

class StateTransitionsTest < ApplicationSystemTestCase
  setup do
    @state_transition = state_transitions(:one)
  end

  test "visiting the index" do
    visit state_transitions_url
    assert_selector "h1", text: "State Transitions"
  end

  test "creating a State transition" do
    visit state_transitions_url
    click_on "New State Transition"

    fill_in "Comment", with: @state_transition.comment
    fill_in "From", with: @state_transition.from
    fill_in "Order detail", with: @state_transition.order_detail_id
    fill_in "To", with: @state_transition.to
    fill_in "User", with: @state_transition.user_id
    click_on "Create State transition"

    assert_text "State transition was successfully created"
    click_on "Back"
  end

  test "updating a State transition" do
    visit state_transitions_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @state_transition.comment
    fill_in "From", with: @state_transition.from
    fill_in "Order detail", with: @state_transition.order_detail_id
    fill_in "To", with: @state_transition.to
    fill_in "User", with: @state_transition.user_id
    click_on "Update State transition"

    assert_text "State transition was successfully updated"
    click_on "Back"
  end

  test "destroying a State transition" do
    visit state_transitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State transition was successfully destroyed"
  end
end
