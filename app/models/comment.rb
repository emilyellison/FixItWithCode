class Comment < ActiveRecord::Base
  
  # Associations
  belongs_to :post
  
  # Attributes
  attr_accessible :approved, :content, :name, :post_id
  
  # Scopes
  scope :approved, where(approved: true)
  scope :most_recent, order('created_at desc')
  scope :least_recent, order('created_at asc')
  
end
