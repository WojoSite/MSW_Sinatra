class CreateAppointmentsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |i|
      i.integer :doctor_id
      i.integer :patient_id
      i.string :start_datetime
      i.string :end_datetime
    end
  end
end
