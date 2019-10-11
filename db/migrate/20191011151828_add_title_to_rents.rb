class AddTitleToRents < ActiveRecord::Migration[6.0]
  def change
    add_column :rents, :title, :string
  end
end
