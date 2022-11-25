class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

  private

  def render_response_record_not_found
    render json: { error: "user not found" }, status: :not_found
  end

end
