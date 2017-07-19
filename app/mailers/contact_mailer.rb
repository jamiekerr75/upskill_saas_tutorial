class ContactMailer < ActionMailer::Base
  default to: 'instructors@upskillcources.com'
  
  def container_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact From Message')
  end
end