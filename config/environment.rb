# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Store::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  port: 587,
  domain: 'gmail.com',
  enable_starttls_auto: true,
  authentication: :plain,
  user_name: 'hadiahameeduet@gmail.com',
  password: 'square63'
}
