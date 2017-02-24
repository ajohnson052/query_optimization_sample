MenuItem.destroy_all
Show.destroy_all
Restaurant.destroy_all
Theater.destroy_all
City.destroy_all

5.times do |c|
  city = City.create(name: "City#{c}", state: "State#{c}")
  40.times do |r|
    restaurant = Restaurant.create(name: "Restaurant#{r}", city_id: city.id, delivery: (true if r%3==0), cash_only: (true if r%8==0))
    20.times do |i|
      MenuItem.create(restaurant_id: restaurant.id, description: "Item#{i}", price:(c*3 + i%6))
    end
    puts "Restaurant#{r} created"
  end
end

5.times do |c|
  city = City.find_by(name: "City#{c}")
  40.times do |t|
    theater = Theater.create(name: "Theater#{t}", city_id: city.id)
    20.times do |s|
      Show.create(theater_id: theater.id, description: "Show#{s}", price:(c*30 + s%6))
    end
    puts "Theater#{t} created"
  end
end
