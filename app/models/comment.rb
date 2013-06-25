class Comment < ActiveRecord::Base
  
  # Associations
  belongs_to :post
  
  # Attributes
  attr_accessible :approved, :content, :name, :post_id
  
  # Validations
  validates_presence_of :content, :post_id
  
  # Scopes
  scope :approved, where(approved: true)
  scope :most_recent, order('created_at desc')
  scope :least_recent, order('created_at asc')
  
  # Methods
  def approval
    self.approved? ? 'Approved' : 'Unapproved' 
  end
  
end
