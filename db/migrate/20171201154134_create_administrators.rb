class CreateAdministrators < ActiveRecord::Migration[5.0]
  def change
    create_table :administrators do |t|
      t.string :username
      t.string :password
      t.string :nama
      t.text :alamat

      t.timestamps
    end
end