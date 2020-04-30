# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all

10.times do |index|
    city = City.create(town: "City#{index}")
    specialty = Specialty.create(name: "Matiere#{index}")
    doctor = Doctor.create(first_name: "Doctor#{index}", last_name:"Nom#{index}", zip_code: "100#{index}", city: city )
    patient = Patient.create(first_name: "Patient#{index}", last_name:"Nom#{index}",city: city)
    appointment = Appointment.create(doctor: doctor, patient: patient, date: Faker::Date.between(from: 2.days.ago, to: Date.today),city: city)
end

