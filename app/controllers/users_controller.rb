class UsersController < ApplicationController
    before_action :verify_user, only: [:show, :edit, :update, :destroy]

    def new 
        @user = User.new
    end


    def create 
        @user = User.create(users_params)
        if @user
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
        # binding.pry
    end

    def show 
        @user = User.find(params[:id])
       
    end




    private 

    def users_params 
        params.require(:user).permit(:name, :password, :height, :nausea, :happiness, :tickets, :admin)
    end
end
