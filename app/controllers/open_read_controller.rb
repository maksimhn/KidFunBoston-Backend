# Allow READ_ACTIONS access without authentication
class OpenReadController < ApplicationController
  READ_ACTIONS = [:index, :show]
  include ActionController::HttpAuthentication::Token
  skip_before_action :authenticate, only: READ_ACTIONS
  before_action :set_current_user, only: READ_ACTIONS

  private

  def set_current_user
    return if current_user
    token = token_and_options(request)
    @current_user = User.find_by(token: token) if token
  end
end
