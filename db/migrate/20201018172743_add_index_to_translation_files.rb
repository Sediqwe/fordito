class AddIndexToTranslationFiles < ActiveRecord::Migration[6.0]
  def change
    add_index :translation_files, :file_name
  end
end
