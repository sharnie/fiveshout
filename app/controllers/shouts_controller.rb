class ShoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shout, only: [:show]

  def index
    @shouts = Shout.all.recent(20)
    @users  = User.all
  end

  def new
  end

  def create
    @shout = current_user.shouts.build(shout_params)

    if @shout.save
      redirect_to shouts_path 
    else
      flash[:notice] = "Shout is too short."
      redirect_to shouts_path 
    end
  end

  def show
  end

private

  def set_shout
    @shout = Shout.find(params[:id])
  end

  def correct_user
    @shout = current_user.shout.find_by(id: params[:id]) if user_signed_in?
    redirect_to root_path if @shout.nil?
  end

  def shout_params
    params.require(:shout).permit(:text)
  end

end