# Salesforce Delivery Method

A delivery method for the [Mail](https://github.com/mikel/mail) gem 

## Rails Setup

```ruby
gem 'salesforce_delivery_method'
```

```ruby
config.action_mailer.salesforce_settings = {
  :client => $metaforce_client
}
config.action_mailer.delivery_method = :salesforce
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
