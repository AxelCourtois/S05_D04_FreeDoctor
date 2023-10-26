# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker' 
Faker::Config.locale = 'fr'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all#=> comme ça à chaque phase de test ça ne me génère pas mille instances

5.times do |index|
  City.create!(
    city_name: Faker::Address.city
   )
end

5.times do |index|
   Doctor.create!(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample
    )
end

15.times do |index|
   Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample
   )
end

30.times do |index|
   Appointment.create!(
     date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 35, format: :short),
     doctor: Doctor.all.sample,
     patient: Patient.all.sample,
     city: City.all.sample
   )
end

10.times do |index|
  specialty = ["Cardiology", "Dermatology", "Gynecology", "Pediatrics", "General Surgery", "Ophthalmology", "Neurology", "Psychiatry", "Oncology", "Orthopedics"].sample
  Specialty.create!(
    specialty_name: specialty
  )
end

Doctor.all.each do |doctor|
  2.times do |index|
    DoctorSpecialty.create!(
      doctor: doctor,
      specialty: Specialty.all.sample
    )
  end
end


