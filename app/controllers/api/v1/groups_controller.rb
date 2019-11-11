class Api::V1::GroupsController < ActionController::API

    def index
        @groups = Group.all 
        render json: @groups, include: [:members, :schedules, :user]
    end

end
