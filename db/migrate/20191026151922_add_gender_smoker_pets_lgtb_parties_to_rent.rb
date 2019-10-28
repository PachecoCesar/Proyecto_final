class AddGenderSmokerPetsLgtbPartiesToRent < ActiveRecord::Migration[6.0]
  def change
    add_column :rents, :gender, :string
    add_column :rents, :smoker, :string
    add_column :rents, :pets, :boolean
    add_column :rents, :lgtb, :boolean
    add_column :rents, :parties, :string
  end
end
