class AddNumberToCars < ActiveRecord::Migration[5.0]
  def change
  	  add_column :cars, :number, :string
  end
end
