#
class ActivitiesController < ApplicationController
  def index
    render json: Activity.where(home: true)
  end

  def find_by_category
    render json: Activity.where(venue: params[:category])
  end

  def find_by_venue
    render json: Activity.where(caption: params[:venue])
  end

  private

  def activity_params
    params.require(:activity).permit(:picture_url, :caption, :cost, :min_age, :max_age, :venue, :activity_level, :holiday_activity, :description, :venue_url, :detail_picture_url, :int_page_header, :detail_page_header, :detail_url_string, :detail_url_text, :home)
  end
end
