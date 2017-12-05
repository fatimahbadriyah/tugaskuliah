class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :nama
      t.string :alamat
      t.string :email
      t.string :password
      t.string :no_tlp

      t.timestamps
    end
  end
end
