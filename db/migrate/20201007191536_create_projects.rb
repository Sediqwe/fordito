class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :www
      t.string :email
      t.string :version
      t.text :details

      t.timestamps
    end
  end
end
