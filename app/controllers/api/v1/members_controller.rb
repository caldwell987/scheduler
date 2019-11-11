class Api::V1::MembersController < ActionController::API

    def index
        @members = Member.all 
        render json: @members, include: [:user, :group]
    end


end
