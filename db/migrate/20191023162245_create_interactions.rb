class CreateInteractions < ActiveRecord::Migration[6.0]
  def change
    create_table :interactions do |t|
      t.integer :lessor_id, index: true, foreign_key: true
      t.integer :renter_id, index: true, foreign_key: true
      t.boolean :application

      t.timestamps
    end
    add_foreign_key :interactions, :users, column: :lessor_id
    add_foreign_key :interactions, :users, column: :renter_id
  end
end
