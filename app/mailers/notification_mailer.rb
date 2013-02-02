class NotificationMailer < ActionMailer::Base
  default from: "emily@fixitwithcode.com"
  
  def notify_about_comment(comment)
    @comment = comment
    mail(:to => comment.post.author.email, :subject => "#{comment.name} has submitted a comment.")
  end
  
end
