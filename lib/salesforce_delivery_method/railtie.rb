module SalesforceDeliveryMethod
  class Railtie < Rails::Railtie
    initializer 'salesforce_delivery_method.add_delivery_method' do |app|
      app.config.action_mailer.salesforce_settings = ActiveSupport::OrderedOptions.new
      ActionMailer::Base.add_delivery_method :salesforce, SalesforceDeliveryMethod::DeliveryMethod, app.config.action_mailer.salesforce_settings
    end
  end
end
