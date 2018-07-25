class CreatePopulations < ActiveRecord::Migration[5.2]
  def change
    create_table :populations do |t|
      t.belongs_to :body
      t.belongs_to :fish
      t.integer :amount
    end
  end
end
