json.extract! transition_log, :id, :from_order_state_id, :to_order_state_id, :user_id, :comment, :order_detail_id, :created_at, :updated_at
json.url transition_log_url(transition_log, format: :json)
