json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :user_id, :integer, :role_id, :integer
  json.url assignment_url(assignment, format: :json)
end
