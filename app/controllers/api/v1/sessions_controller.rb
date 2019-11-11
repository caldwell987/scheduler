class Api::V1::SessionsController < ActionController::API
    
    def index
    @users = User.all 
       render json: @users
    end
    
    def create 
        @user = User.where(email: params[:email]).first

        if user.vaild_password?(params[:password])
            #render :create, status: :created
            render json: user.as_json(only: [:id, :email]), status: :created

        else
            head(:unautherized)
        end
    end

    def destroy
        
    end
end