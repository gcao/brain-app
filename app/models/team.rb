class Team
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :email_alias, type: String

  has_many :projects
  has_one :scrum_master, class_name: "Person"
  has_one :product_owner, class_name: "Person"
  has_one :business_analyst, class_name: "Person"
  has_one :tech_lead, class_name: "Person"
  has_many :testers, class_name: "Person"
  has_many :developers, class_name: "Person"
end
