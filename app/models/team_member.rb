class TeamMember
  include Mongoid::Document
  #scrum_master product_owner business_analyst tech_lead developer tester
  field :role, type: String

  belongs_to :team, inverse_of: 'members'
  belongs_to :person

  def name
    "#{first_name} #{last_name}"
  end

  def hipchat_account
    account = self["hipchat_account"]
    account.to_s.empty? ? "#{first_name}#{last_name}" : account
  end
end
