class CreateTranslationFileContents < ActiveRecord::Migration[6.0]
  def change
    create_table :translation_file_contents do |t|
      t.references :translation_files, null: false, foreign_key: true
      t.string :key
      t.text :value
      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
