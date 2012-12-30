class Administrator < ActiveRecord::Base
  
  # Gems
  has_secure_password
  
  # Attributes
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  
  # Validations
  validates_presence_of :first_name, :last_name, :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
  validates :email, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }

  # Methods
  def name
    "#{first_name} #{last_name}"
  end
  
end
