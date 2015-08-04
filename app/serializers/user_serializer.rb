#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :current_user, :name

  def current_user
    scope == object
  end
end
