class Post < ActiveRecord::Base
  
  # Gems
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  
  # Associations
  belongs_to :author, class_name: 'Administrator', foreign_key: :administrator_id
  has_many :comments
  
  # Attributes
  attr_accessible :administrator_id, :approved, :content, :title
  
  # Scopes
  scope :approved, where(approved: true)
  scope :most_recent, order('created_at desc')
  scope :least_recent, order('created_at asc')
  
  # Methods
  def approval
    self.approved? ? 'Approved' : 'Unapproved' 
  end
  
  def url
    "http://www.fixitwithcode.com/blog/posts/" + self.slug
  end
  
end
