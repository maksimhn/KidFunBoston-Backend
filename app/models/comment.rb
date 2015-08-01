#
class Comment < ActiveRecord::Base
  belongs_to :activity
  belongs_to :user

  validates :title, :body, presence: true
end
