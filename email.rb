require 'mail'

class Email
  def send_email(text, arguments)
    options = { :address => "smtp.gmail.com",
                 :port => 587,
                 :domain => 'DP413',
                 :user_name => "#{arguments[0]}",
                 :password => "#{arguments[1]}",
                 :authentication => 'plain',
                 :enable_starttls_auto => true }
    Mail.defaults do
      delivery_method :smtp, options
    end

    Mail.deliver do
      to 'obahn@softserveinc.com'
      from "#{arguments[0]}"
      subject "Task from Olha"
      body "The amount of users is #{text}"
    end
  end
end



