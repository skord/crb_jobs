ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  authentication: :plain,
  port: "587",
  domain: "gmail.com",
  user_name: "crbjobs@gmail.com",
  password: "HdRcxmzNcDU4QxQqAii4H"
}

