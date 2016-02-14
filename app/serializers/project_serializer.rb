class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :team

  def id
    object.id.to_s
  end
end
