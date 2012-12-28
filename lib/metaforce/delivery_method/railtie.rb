module Metaforce
  class DeliveryMethod::Railtie < Rails::Railtie
    ActionMailer::Base.add_delivery_method :metaforce, Metaforce::DeliveryMethod
  end
end
