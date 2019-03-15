json.extract! log, :id, :logtime, :user_id, :level, :message, :created_at, :updated_at
json.url log_url(log, format: :json)
