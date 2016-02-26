class Person
  include Mongoid::Document
  field :job_title, type: String
  field :first_name, type: String
  field :last_name, type: String
  field :username, type: String
  field :email, type: String
  field :phone_no, type: String
  field :hipchat_account, type: String

  has_many :teams, class_name: "TeamMember", inverse_of: "person"

  def name
    "#{first_name} #{last_name}"
  end

  def hipchat_account
    account = self["hipchat_account"]
    account.to_s.empty? ? "#{first_name}#{last_name}" : account
  end
end
