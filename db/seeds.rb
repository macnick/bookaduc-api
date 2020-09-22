# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Bike
# Bike.create({ name: 'Panigale V2', displacement: '955 cc',
#               power: '155 hp', torque: '104 Nm', weight: '176 Kg', image: 'alal' })
# Bike.create({ name: 'Panigale V4', displacement: '1103 cc',
#               power: '214 hp', torque: '124 Nm', weight: '175 Kg', image: 'alal' })
# Bike.create({ name: 'Panigale V4 R', displacement: '998 cc',
#               power: '221 hp', torque: '112 Nm', weight: '172 Kg', image: 'alal' })

# Bookings

# Booking.delete_all

# ids = [1,3,4,5,6]

# 6.times do
#   book = Booking.create! city: Faker::Nation.capital_city, date: Faker::Date.in_date_period(year: 2020, month: 10), bike_id: ids[rand(ids.size)], user_id: ids[rand(ids.size)]
#   puts "Created a new booking: #{book.id}"
# end
