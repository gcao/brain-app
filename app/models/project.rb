class Project
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :codebase, type: String

  belongs_to :team
end
