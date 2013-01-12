class Post < ActiveRecord::Base
  
  # Associations
  belongs_to :author, class_name: 'Administrator', foreign_key: :administrator_id
  
  # Attributes
  attr_accessible :administrator_id, :approved, :description, :title
  
  # Scopes
  scope :approved, where(approved: true)
  scope :most_recent, order('created_at desc')
  scope :least_recent, order('created_at asc')
  
  # Methods
  def approval
    self.approved? ? 'Approved' : 'Unapproved' 
  end
  
end
