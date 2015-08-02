#
class CategoriesController < ApplicationController
  def index
    render json: Activity.where(venue: params[:category])
  end
end
