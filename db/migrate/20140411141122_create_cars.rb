class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.string :user_id
      t.belongs_to :users
      t.timestamps
    end
  end
end
