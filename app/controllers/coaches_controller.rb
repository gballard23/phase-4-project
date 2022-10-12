class CoachesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        coaches = Coach.all 
        render json: coaches 
    end 

    def show 
        coach = find_coach
        render json: coach 
    end

    def create 
        coach = Coach.create(coach_params)
        render json: coach, status: :created 
    end

    def update
        coach = find_coach
        coach.update(coach_params)
        render json: coach
    end

    def destroy
        coach = find_coach
        coach.destroy
        head :no_content
    end


    private 

    def find_coach
        Coach.find(params[:id])
    end

    def coach_params 
        params.permit(:first_name, :last_name, :title)
    end

    def render_not_found_response
        render json: { errors: "Coach not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
