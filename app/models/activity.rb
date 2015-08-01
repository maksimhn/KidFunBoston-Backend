#
class Activity < ActiveRecord::Base
  validates :picture_url, :caption, :cost, :venue, :activity_level,
            :description, :venue_url, presence: true
  validates :min_age, :max_age, numericality: { only_integer: true }
  validates :holiday_activity, inclusion: [true, false]
end
