class Comment < ActiveRecord::Base
  # Gems
  apply_simple_captcha
  
  # Associations
  belongs_to :post
  
  # Attributes
  attr_accessible :approved, :content, :name, :post_id, :captcha, :captcha_key
  
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
