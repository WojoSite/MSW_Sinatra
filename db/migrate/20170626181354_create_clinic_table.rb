class CreateClinicTable < ActiveRecord::Migration[5.1]
  def change
    create_table :clinic do |i|
      i.string :name
      i.string :address
    end
  end
end
