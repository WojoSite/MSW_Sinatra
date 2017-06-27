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
		firstname: params[:firstname],
		lastname: params[:lastname],
	)
	erb :patients
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
