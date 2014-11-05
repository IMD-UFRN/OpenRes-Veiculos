json.array!(@car_reservations) do |car_reservation|
  json.extract! car_reservation, :id
  json.url car_reservation_url(car_reservation, format: :json)
end
