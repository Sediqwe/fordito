class CreateTrans < ActiveRecord::Migration[6.0]
  def change
    create_table :trans do |t|
      t.integer :translation_file_contents_id
      t.string :key
      t.text :value
      t.text :new_value
      t.integer :user_id
      t.integer :status
      t.timestamps
    end
  end
end
