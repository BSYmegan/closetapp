class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        end
    
    def new
        end
         def new
        @user = User.new
      end
def create
	 secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
    @user = User.new(secure_params)
     if @user.save
        remember @user       #  NEW LINE
        flash[:success] = "Welcome to the Twitter App!"    # NEW LINE
       redirect_to @user   # NEW LINE
     else
         render 'new'     # NEW LINE      
     end
end
end