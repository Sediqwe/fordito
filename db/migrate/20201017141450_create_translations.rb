class CreateTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :translations do |t|
      t.text  :line,  null: false
      t.integer :project_id, null: false
      t.string  :language, null: false
      t.integer :original_id
      t.string  :file_name,  null: false
      t.timestamps
    end
  end
end
