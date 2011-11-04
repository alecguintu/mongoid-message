module Mongoid
  module Message
    extend ActiveSupport::Concern

    included do |base|
      base.has_many :recipients
    end

    def send_msg(message, all_recipients, subject, sanitize = true)
      conversation = Conversation.create(:subject => subject)
      content = Content.create(:subject => subject, :body => message)

      puts self.recipients.class

      sender = Recipient.create(:r_id => self.id, :r_type => self.class.name,
                  :conversation => conversation, :content => content,
                  :type => 'Sent', :is_draft => false, :is_read => true)

      all_recipients.each do |r|
        Recipient.create(:r_id => r.id, :r_type => r.class.name, :type => 'Inbox',
                  :conversation => conversation, :content => content,
                  :type => 'Inbox', :is_draft => false, :is_read => false)
      end
    end

    def read

    end

    def inbox

    end

    def sentbox

    end
  end
end
