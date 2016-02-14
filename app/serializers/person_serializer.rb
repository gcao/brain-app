class PersonSerializer < ActiveModel::Serializer
  attributes :id, :job_title, :first_name, :last_name, :name, :username, :email, :phone_no, :hipchat_account

  def id
    object.id.to_s
  end
end
