class Conversation
  include Mongoid::Document
  include Mongoid::Timestamps

  field :subject

  has_many :recipients

  validates_presence_of :subject
end
