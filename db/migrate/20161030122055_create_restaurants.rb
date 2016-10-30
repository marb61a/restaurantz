class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state_provence
      t.string :postalcode
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
