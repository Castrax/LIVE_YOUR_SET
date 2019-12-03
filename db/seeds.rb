u2 = User.create(first_name: "Coralie", last_name: "Loheac", email: "coco@coco.com", password: "testtest")

b1 = Booking.create(start_date: Date.today, end_date: Date.today + 8, total_price: 1200, status: "upcoming", user_id: 121, movie_set_id: 127)
b2 = Booking.create(start_date: Date.new(2018,2,3), end_date: Date.new(2018,3,3), total_price: 800, status: "past", user_id: 121, movie_set_id: 128)
b3 = Booking.create(start_date: Date.new(2016,6,23), end_date: Date.new(2016,7,3), total_price: 2100, status: "past", user_id: 121, movie_set_id: 126)
