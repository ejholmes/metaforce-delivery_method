module Metaforce
  class DeliveryMethod
    attr_accessor :settings
    attr_accessor :client

    def initialize(options = {})
      self.settings = options
      self.client = settings[:client]
    end

    def deliver!(mail)
      options = {
        to_addresses: Array(mail.to),
        reply_to: mail.reply_to,
        subject: mail.subject,
      }
      if mail.multipart?
        options.merge!(plain_text_body: mail.text_part.to_s, html_body: mail.html_part.to_s)
      else
        options.merge!(plain_text_body: mail.body.to_s)
      end
      client.send_email options
    end
  end
end
