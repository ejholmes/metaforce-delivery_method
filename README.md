# Metaforce Delivery Method

A delivery method for the [Mail](https://github.com/mikel/mail) gem using
[Metaforce#send\_email](https://github.com/ejholmes/metaforce) as a backend.

## Rails Setup

Add the gem to your Gemfile:

```ruby
gem 'metaforce-delivery_method'
```

Add the following to your config/application.rb:

```ruby
config.action_mailer.metaforce_settings = {
  :client => Metaforce.new(
    username: 'username',
    password: 'passwrod',
    security_token: 'securty token'
  )
}
config.action_mailer.delivery_method = :metaforce
```

Then use mailers just like you would with any other delivery method:

```ruby
# app/mailers/user_mailer.rb
class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email
    mail(to: 'foo@example.com', subject: 'Welcome!')
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
