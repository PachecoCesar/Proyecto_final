class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :lessor_id, index: true, foreign_key: true
      t.integer :renter_id, index: true, foreign_key: true

      t.timestamps
    end
    add_foreign_key :matches, :users, column: :lessor_id
    add_foreign_key :matches, :users, column: :renter_id
  end
end
