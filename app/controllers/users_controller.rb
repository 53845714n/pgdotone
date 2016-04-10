class UsersController < ApplicationController
	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		
		if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
			if @user.update_without_password(user_params)
				flash[:notice] = 'El usuario fue actualizado exitosamente'
				sign_in @user, :bypass => true
				redirect_to admin_path
			else
				render :edit
			end
		else
			if @user.update(user_params)
				flash[:notice] = 'El usuario fue actualizado exitosamente'
				sign_in @user, :bypass => true
				redirect_to admin_path
			else
				render :edit
			end
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :fullname, :admin, :active, :email, :password, :password_confirmation, :image)
	end
end