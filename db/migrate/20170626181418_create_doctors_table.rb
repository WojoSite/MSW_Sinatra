class CreateDoctorsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |i|
      i.string :name
      i.string :specialty
      i.string :clinic_id
    end
  end
end
