class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :team

  def id
    object.id.to_s
  end

  def team
    _team = object.team
    return unless _team
    {
      id: _team.id.to_s,
      name: _team.name,
    }
  end
end
