# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'table_print'

10.times do |index|

    city = City.create(name: "city#{index}")
    dogsitter = Dogsitter.create(name:"Dogsitter#{index}",city: city)
    dog = Dog.create(name:"Dog#{index}", city: city)
    stroll = Stroll.create(name:"Promenade n#{index}",dog: dog, dogsitter: dogsitter)

end
