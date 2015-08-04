#
class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :picture_url, :caption, :cost, :min_age, :max_age, :venue,
             :activity_level, :holiday_activity, :description, :venue_url,
             :detail_picture_url, :int_page_header, :detail_page_header,
             :detail_url, :detail_url_text, :home

  has_many :comments
end
