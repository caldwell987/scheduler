class Api::V1::SchedulesController < ActionController::API

    def index
        @schedules = Schedule.all 
        render json: @schedules, include: [:group]
    end

end
