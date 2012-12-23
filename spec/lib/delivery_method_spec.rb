require 'spec_helper'

describe SalesforceDeliveryMethod::DeliveryMethod do
  let(:client) { double('metaforce client') }

  before do
    context = self
    Mail.defaults do
      delivery_method SalesforceDeliveryMethod::DeliveryMethod, :client => context.client
    end
  end

  context 'content' do
    context 'plain' do
      it 'sends the email' do
        client.should_receive(:send_email).with(
          :to_addresses => ['Bar bar@example.com'],
          :reply_to => 'No Reply no-reply@example.com',
          :subject => 'Hello',
          :plain_text_body => kind_of(Mail::Body)
        )
        Mail.deliver do
          from     'foo foo@example.com'
          reply_to 'No Reply no-reply@example.com'
          to       'Bar bar@example.com'
          subject  'Hello'
          body     'World!'
        end
      end
    end

    context 'html' do
      it 'sends the email' do
        client.should_receive(:send_email).with(
          :to_addresses => ['Bar bar@example.com'],
          :reply_to => 'No Reply no-reply@example.com',
          :subject => 'Hello',
          :plain_text_body => kind_of(Mail::Part),
          :html_body => kind_of(Mail::Part)
        )
        Mail.deliver do
          from     'foo foo@example.com'
          reply_to 'No Reply no-reply@example.com'
          to       'Bar bar@example.com'
          subject  'Hello'
          text_part do
            body     'World!'
          end
          html_part do
            content_type 'text/html; charset=UTF-8'
            body '<h1>This is HTML</h1>'
          end
        end
      end
    end
  end
end
