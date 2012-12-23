module SalesforceDeliveryMethod
  class DeliveryMethod
    attr_accessor :settings

    def initialize(options = {})
      self.settings = options
    end

    def deliver!(mail)
      options = {
        to_addresses: Array(mail.to),
        reply_to: mail.reply_to,
        subject: mail.subject,
      }
      if mail.multipart?
        options.merge!(plain_text_body: mail.text_part, html_body: mail.html_part)
      else
        options.merge!(plain_text_body: mail.body)
      end
      client.send_email options
    end

  private

    def client
      settings[:client]
    end

  end
end
