class AddLastNamePhotoAboutMeRutToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :about_me, :string
    add_column :users, :rut, :string
  end
end
