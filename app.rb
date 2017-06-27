# ======= requires =======
require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"
require "./models.rb"

# ======= database =======
set :database, "sqlite3:appt_db.db"

# ======= home =======
get '/' do
	puts "\n******* home *******"
	erb :home
end

get '/patients' do
	puts "\n******* patients *******"
  @patients = Patient.all
	erb :patients
end

post '/patientform' do
	puts "\n******* patient form *******"
  Patient.create(
		firstname: params[:patient][:firstname],
		lastname: params[:patient][:lastname],
	)
	# create emr foreign key here
	# insert int
	Emr.create(
		diagnosis: params[:emr][:diagnosis],
		prognosis: params[:emr][:diagnosis],
	)
	puts "\n******* patient params *******"
	puts params.inspect
	redirect "/patients"
end

get '/patientupdate/:id' do
	@patient = Patient.find(params[:id])
	puts "patient: #{@patient.id}"
	puts "PATIENT UPDATE HAS RUN"
	erb :patientupdate
end


get '/deletepatient/:id' do
	puts "\n******* delete patient *******"
	Patient.find(params[:id]).destroy
	redirect "/patients"
end

get '/doctors' do
	puts "\n******* doctors *******"
	erb :doctors
end

get '/clinics' do
	puts "\n******* clinics *******"
	erb :clinics
end

get '/appointments' do
	puts "\n******* appointments *******"
	erb :appointments
end
