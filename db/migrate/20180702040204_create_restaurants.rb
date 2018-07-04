class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
