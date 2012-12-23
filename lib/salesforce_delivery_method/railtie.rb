module SalesforceDeliveryMethod
  class Railtie < Rails::Railtie
    initializer 'salesforce_delivery_method.add_delivery_method' do
      ActionMailer::Base.add_delivery_method :salesforce, SalesforceDeliveryMethod::DeliveryMethod
    end
  end
end
