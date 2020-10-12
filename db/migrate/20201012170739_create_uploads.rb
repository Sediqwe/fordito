class CreateUploads < ActiveRecord::Migration[6.0]

  def change
    
    create_table :uploads do |t|
      t.string :file_name
      t.string :file_ext
      t.string :file_size
      t.string :game_version
      t.integer :project_id

      t.timestamps
    end
   
  end
end
