class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :car_model
      t.string :car_type
      t.string :oil
      t.string :state
      t.date :date_from
      t.date :date_to
      t.time :time_from
      t.time :time_to
      t.string :renter
      t.integer :price
      t.string :mobile
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :cars, [:user_id, :created_at]
  end
end
