class AddIndexToTranslationFileContents < ActiveRecord::Migration[6.0]
  def change
    add_index :translation_file_contents, :key
    add_index :translation_file_contents, :value
  end
end
