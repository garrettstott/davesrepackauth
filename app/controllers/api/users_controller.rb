class Api::UsersController < ApplicationController
  def info
    render json: current_user
  end
end
