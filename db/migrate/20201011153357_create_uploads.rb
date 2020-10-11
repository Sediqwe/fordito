class CreateUploads < ActiveRecord::Migration[6.0]
  def change
    create_table :uploads do |t|
      t.string :filename
      t.string :filext
      t.string :filesize
      t.string :fileversion
      t.string :gamename

      t.timestamps
    end
  end
end
