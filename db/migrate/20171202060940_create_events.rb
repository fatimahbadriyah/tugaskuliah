class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :judul
      t.datetime :tgl_awal
      t.datetime :tgl_akhir
      t.string :gambar
      t.string :no_tlp
      t.text :pelaksana
      t.text :lokasi
      t.string :jenis_event
      t.string :sasaran
      t.text :ketentuan

      t.timestamps
    end
  end
end
