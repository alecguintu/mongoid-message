class User
  include Mongoid::Document
  include Mongoid::Message

  field :name
end
