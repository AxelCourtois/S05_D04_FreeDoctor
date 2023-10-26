FreeDoctor seed 1 : 

<!-- require 'faker'
Faker::Config.locale = 'fr'


5.times do |index|
  specialty = ['Kinésithérapeute', 'Chirurgien', 'Fumeur de spliff', 'Amateur de vin', 'Médecin généraliste'].sample
  Doctor.create!(
  first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name, 
  specialty: specialty, 
  zip_code: Faker::Address.zip_code)
end

30.times do |index|
  Patient.create!(
  first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name
  )
end

Doctor.all.each do |doctor|
  2.times do
    Appointment.create!(
    doctor: doctor,
    patient: Patient.all.sample,
    date: Faker::Time.between_dates(from: Date.today - 365, to: Date.today, period: :morning)
    )
  end
end -->
