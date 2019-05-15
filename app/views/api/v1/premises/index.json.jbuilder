json.array! @premises do |premise|
  json.extract! premise, :id, :name, :address
end
