class Person
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :job_title, type: String
  field :email, type: String
  field :phone_no, type: String
  field :hipchat_account, type: String
end
