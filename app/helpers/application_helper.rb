module ApplicationHelper
  
  def telephone_icon length
    image_tag "telephone.png", size: "#{length}x#{length}"
  end
  
  def email_icon length
    image_tag "http://png-4.findicons.com/files/icons/989/ivista_2/128/email.png", size: "#{length}x#{length}"
  end
  
  def github_icon length
    image_tag('http://www.fixitwithcode.com/assets/github_profile-a1ae9e7318180bd167664d4515fe1ac0.jpeg', size: "#{length}x#{length}")
  end
  
  def linked_in_icon length
    image_tag('http://png-5.findicons.com/files/icons/819/social_me/64/linkedin.png', size: "#{length}x#{length}")
  end
  
  def twitter_icon length
    image_tag('http://www.fixitwithcode.com/assets/twitter_profile-5a77947135ec6cf0f348d06ed66ecf8c.png', size: "#{length}x#{length}")
  end
  
  def phone_number_link text
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}"
  end
  
  def pretty_date date_text
    date_text.strftime('%B %e, %Y')
  end
  
end
