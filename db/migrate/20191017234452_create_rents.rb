class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :town
      t.string :city
      t.float :latitude
      t.float :longitude
      t.string :title
      t.string :photos
      t.string :price
      t.string :description
      t.string :kind_of
      t.integer :rooms
      t.string :period
      t.string :bath

      t.timestamps
    end
  end
end
