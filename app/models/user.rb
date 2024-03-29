#
class User < ActiveRecord::Base
  has_many :comments
  has_many :activities, through: :comments

  has_secure_password

  before_create :set_token

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  def self.login(email, password)
    user = find_by email: email
    user.login password if user
  end

  def login(password)
    authenticate(password) && set_token && save && token
  end

  private

  def set_token
    self.token = SecureRandom.hex
  end
end
