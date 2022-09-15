class Contact
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :phone, type: String
  field :email, type: String
  field :age, type: Integer
  field :observations, type: String
end
