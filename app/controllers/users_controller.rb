class UsersController < ApplicationController
  def new
  end

  def index
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @tasting_notes = @user.tasting_notes
  end
end
