class UsersController < ApplicationController

	def home

		render 'home'

    end

    def show

        # @users = User.order(:name)
        @user = User.find(params[:id])


    end

    def create


      user = User.new(
        :name => params[:user][:name],
        :address => params[:user][:address],
        :phone => params[:user][:phone],
        :email => params[:user][:email])

      user.save
      redirect_to("/users")

    end

    def destroy


    end

end
