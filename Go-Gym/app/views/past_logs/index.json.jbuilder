json.array!(@past_logs) do |past_log|
  json.extract! past_log, :id, :Workout, :Date
  json.url past_log_url(past_log, format: :json)
end
