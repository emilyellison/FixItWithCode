class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.boolean :approved, default: false
      t.integer :post_id

      t.timestamps
    end
  end
end
