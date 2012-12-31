class AddFieldsToAdministrator < ActiveRecord::Migration
  def change
    add_column :administrators, :linked_in, :string
    add_column :administrators, :twitter, :string
    add_column :administrators, :github, :string
    add_column :administrators, :city, :string
    add_column :administrators, :phone, :string
  end
end
