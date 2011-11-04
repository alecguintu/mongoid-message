class Recipient
  include Mongoid::Document
  include Mongoid::Timestamps

  field :r_id
  field :r_type

  field :type, :type => String, :default => 'Inbox' # 'Inbox/Sent'

  # flags for the recipient
  field :is_read, :type => Boolean, :default => false
  field :is_draft, :type => Boolean, :default => true
  field :is_deleted, :type => Boolean, :default => false

  belongs_to :conversation
  belongs_to :content
end
