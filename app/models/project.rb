class Project < ActiveRecord::Base
  
  # Associations
  belongs_to :administrator
  
  # Attributes
  attr_accessible :administrator_id, :content, :github_link, :photo_link, :title, :website_link, :approved

  # Methods
  def approval
    self.approved? ? 'Approved' : 'Unapproved' 
  end

end
