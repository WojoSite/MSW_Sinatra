class CreateEmrTable < ActiveRecord::Migration[5.1]
  def change
    create_table :emrs do |i|
      i.string :diagnosis
      i.string :prognosis
    end
  end
end
