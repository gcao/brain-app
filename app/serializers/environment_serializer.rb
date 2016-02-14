class EnvironmentSerializer < ActiveModel::Serializer
  attributes :id, :description, :info_page_url, :hdap_domain, :hdap_server, :postgres_server, :requires_ssl, :role

  def id
    object.id.to_s
  end
end
