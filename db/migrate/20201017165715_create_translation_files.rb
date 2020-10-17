class CreateTranslationFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :translation_files do |t|
      t.references :uploads, null: false, foreign_key: true
      t.string :file_name
      t.string :file_type
      t.timestamps
    end
  end
end
