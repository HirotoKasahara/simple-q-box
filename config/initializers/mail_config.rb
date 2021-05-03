ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'ookiioimo@gmail.com',
  password: 'oaqknxjjucyuobqy',
  authentication: 'plain',
  enable_starttls_auto: true
}