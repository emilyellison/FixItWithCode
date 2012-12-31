module ApplicationHelper
  
  def telephone_icon
    image_tag "telephone.png", size: '24x24'
  end
  
  def email_icon
    image_tag "http://png-4.findicons.com/files/icons/989/ivista_2/128/email.png", size: '24x24'
  end
  
  def github_icon
    image_tag('http://www.fixitwithcode.com/assets/github_profile-a1ae9e7318180bd167664d4515fe1ac0.jpeg', size: '28x28')
  end
  
  def linked_in_icon
    image_tag('http://png-5.findicons.com/files/icons/819/social_me/64/linkedin.png', size: '28x28')
  end
  
  def twitter_icon
    image_tag('http://www.fixitwithcode.com/assets/twitter_profile-5a77947135ec6cf0f348d06ed66ecf8c.png', size: '28x28')
  end
  
  def phone_number_link(text)
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}"
  end
  
end
