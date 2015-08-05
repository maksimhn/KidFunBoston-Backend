#
class ActivitiesController < ApplicationController
  skip_before_action :authenticate, only: [:index, :show]

  def index
    set_list
    render json: @activities
  end

  def show
    render json: Activity.find(params[:id])
  end

  private

  def set_list
    if params[:category]
      @activities = Activity.where(venue: params[:category])
    else
      @activities = Activity.where(home: true)
    end
  end

  def activity_params
    params.require(:activity).permit(:picture_url, :caption, :cost, :min_age, :max_age, :venue, :activity_level, :holiday_activity, :description, :venue_url, :detail_picture_url, :int_page_header, :detail_page_header, :detail_url_string, :detail_url_text, :home)
  end
end
