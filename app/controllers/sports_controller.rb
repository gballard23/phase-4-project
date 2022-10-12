class SportsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

def index 
    sports = Sport.all 
    render json: sports 
end 

def show 
    sport = find_sport
    render json: sport
end 

private 

def find_sport 
    Sport.find(params[:id])
end

def sport_params 
    params.permit(:name)
end

def render_not_found_response
    render json: { errors: "Player not found" }, status: :not_found 
end

def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
end
end
