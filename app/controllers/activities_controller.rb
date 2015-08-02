#
class ActivitiesController < ApplicationController
  def index
    render json: Activity.all
  end

  private

  def activity_params
    params.require(:activity).permit(:picture_url, :caption, :cost, :min_age, :max_age, :venue, :activity_level, :holiday_activity, :description, :venue_url, :detail_picture_url, :int_page_header, :detail_page_header, :detail_url_string, :detail_url_text)
  end
end
