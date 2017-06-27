class CreatePatientsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |i|
      i.string :firstname
      i.string :lastname
      i.integer :emr_id
    end
  end
end
