#
class Comment < ActiveRecord::Base
  belongs_to :activity
  belongs_to :user

  validates :title, :body, :user_id, :activity_id, presence: true
end
