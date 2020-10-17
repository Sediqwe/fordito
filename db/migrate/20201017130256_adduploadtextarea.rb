class Adduploadtextarea < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :translation, :text
  end
end
