class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])

  #   if @user.update_attributes(user_params)
  #     redirect_to user_path, :notice => "Your profile information has been updated."
  #   else
  #     redirect_to edit_user_path, :alert => "Your profile information could not be saved. Make sure all fields are filled out and try again."
  #   end
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:email)
  # end
end
