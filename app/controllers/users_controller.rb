class UsersController < ApplicationController
  before_action :authenticate_user!, except: [ :home, :index, :show]

  def show
    @user = User.find(params[:id])
    authorize @user
  end
end
