class CreateRestaurantsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
    end
  end
end
