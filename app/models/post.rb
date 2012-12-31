class Post < ActiveRecord::Base
  
  # Associations
  belongs_to :administrator
  
  # Attributes
  attr_accessible :administrator_id, :approved, :description, :title
  
  # Methods
  def approval
    self.approved? ? 'Approved' : 'Unapproved' 
  end
  
end
