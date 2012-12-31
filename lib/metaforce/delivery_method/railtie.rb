module Metaforce
  class DeliveryMethod::Railtie < Rails::Railtie
    ActionMailer::Base.add_delivery_method :metaforce, Metaforce::DeliveryMethod
    config.action_mailer.metaforce_settings = { :client => Metaforce.new }
  end
end
