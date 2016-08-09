# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Configure ActionMailer to Use SendGrid
# source: https://sendgrid.com/docs/Integrate/Frameworks/rubyonrails.html
ActionMailer::Base.smtp_settings = {
  :user_name => 'alaindm',
  :password => 'fdas2020',
  :domain => 'imobank.com.br',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
