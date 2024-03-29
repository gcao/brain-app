class Environment
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :info_page_url, type: String
  field :hdap_domain, type: String
  field :hdap_server, type: String
  field :postgres_server, type: String
  field :requires_ssl, type: Boolean
  field :role, type: String

  def postgres_server
    server = self["postgres_server"]
    server.to_s.empty? ? hdap_server : server
  end
end
