module ApplicationHelper
  
  def title
    if params[:id].present?
      return Post.find(params[:id]).title
    else
      return "Fix It With Code"
    end
  end
  
  def telephone_icon length
    image_tag "telephone.png", size: "#{length}x#{length}"
  end
  
  def email_icon length
    image_tag "email.png", size: "#{length}x#{length}"
  end
  
  def github_icon length
    image_tag('github.jpeg', size: "#{length}x#{length}")
  end
  
  def linked_in_icon length
    image_tag('linkedin.png', size: "#{length}x#{length}")
  end
  
  def twitter_icon length
    image_tag('twitter.png', size: "#{length}x#{length}")
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
