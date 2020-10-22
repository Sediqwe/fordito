class CreateTrans < ActiveRecord::Migration[6.0]
  def change
    create_table :trans do |t|
      t.references :translation_file_content, null: false, foreign_key: true
      t.references :user, null: true, foreign_key: true
      t.text :value
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
