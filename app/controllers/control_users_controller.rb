class ControlUsersController < ApplicationController
	  before_action :authenticate_user!
    before_action :set_user, only: [:show, :edit, :update, :destroy]
	  
  def index
  	@users = User.all 
  	authorize @users
  end

  def edit

  end

  def update

  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to control_user_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit()
    end

end
