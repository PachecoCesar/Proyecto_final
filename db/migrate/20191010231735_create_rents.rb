class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :town
      t.string :city
      t.integer :postal_code
      t.integer :latitude
      t.integer :longitude
      t.integer :price
      t.string :photos
      t.string :type
      t.integer :rooms
      t.string :description
      t.string :time
      t.string :bath
      t.string :gender
      t.boolean :lgtb
      t.boolean :pets
      t.boolean :smoker
      t.boolean :drugs

      t.timestamps
    end
  end
end
