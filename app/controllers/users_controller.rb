class UsersController < ApplicationController
	# Authenticate before proceed any
	before_filter :authenticate_user!

	def new  
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = 'El usuario fue creado exitosamente'
			redirect_to admin_path
		else
			render :new
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user         = User.find(params[:id])
		@current_id   = current_user.id
		@session_user = User.find(@current_id)

		if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
			if @user.update_without_password(user_params)
				flash[:notice] = 'El usuario fue actualizado exitosamente'
				redirect_to admin_path
			else
				render :edit
			end
		else
			if @user.update_attributes(user_params)
				sign_in(@session_user, :bypass => true) # login before update passing @session_user object
				flash[:notice] = 'El usuario fue actualizado exitosamente'
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