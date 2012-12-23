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
ActionMailer::Base.add_delivery_method :salesforce, Metaforce::DeliveryMethod
config.action_mailer.metaforce_settings = {
  :client => Metaforce.new(
    username: 'username',
    password: 'passwrod',
    security_token: 'securty token'
  )
}
config.action_mailer.delivery_method = :metaforce
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
