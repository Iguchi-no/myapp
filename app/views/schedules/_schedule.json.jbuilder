json.extract! schedule, :id, :place, :date, :start_time, :end_time, :memo, :owner_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
