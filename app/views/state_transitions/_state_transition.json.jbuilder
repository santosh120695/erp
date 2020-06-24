json.extract! state_transition, :id, :from, :to, :comment, :user_id, :order_detail_id, :created_at, :updated_at
json.url state_transition_url(state_transition, format: :json)
