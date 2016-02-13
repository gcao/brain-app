class Team
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :email_alias, type: String
end
