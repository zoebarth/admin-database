class CreateBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :bodies do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :description
      t.timestamp
    end
  end
end
