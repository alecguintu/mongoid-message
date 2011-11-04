class Content
  include Mongoid::Document

  field :subject  
  field :body

  has_many :recipients

  validates_presence_of :body
end
