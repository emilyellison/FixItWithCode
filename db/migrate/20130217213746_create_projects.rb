class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :content
      t.string :github_link
      t.string :website_link
      t.string :photo_link
      t.integer :administrator_id
      t.boolean :approved, default: false
      
      t.timestamps
    end
  end
end
