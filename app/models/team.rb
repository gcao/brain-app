class Team
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :email_alias, type: String

  has_many :projects
  has_one :scrum_master, type: Person
  has_one :product_owner, type: Person
  has_one :business_analyst, type: Person
  has_one :tech_lead, type: Person
  has_many :testers, type: Person
  has_many :developers, type: Person
end
