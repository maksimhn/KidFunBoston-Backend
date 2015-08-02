#
class CategoriesController < ApplicationController
  def index
    render json: Activity.where(venue: 'Museums')
  end
end
