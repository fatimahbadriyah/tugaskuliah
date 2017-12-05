lass CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :judul
      t.date :tgl_awal
      t.date :tgl_akhir

      t.timestamps
    end
  end
end
