class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
