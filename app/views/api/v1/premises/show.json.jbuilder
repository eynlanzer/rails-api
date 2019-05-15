json.extract! @premise, :id, :name, :address
json.stations @premise.stations do |station|
  json.extract! station, :serial, :premise_id, :name
end
