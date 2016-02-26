class TeamSerializer < ActiveModel::Serializer
  attributes :id, :description, :email_alias#, :scrum_master, :product_owner, :business_analyst, :tech_lead, :testers, :developers, :projects

  def id
    object.id.to_s
  end
end
