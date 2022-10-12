class PlayersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index 
        players = Player.all 
        render json: players
    end

    def show 
        player = find_player
        render json: player
    end 

    def create 
        player = Player.create(player_params)
        render json: player, status: :created 
    end

    def update
        player = find_player
        player.update(player_params)
        render json: player
    end

    private 

    def find_player 
        Player.find(params[:id])
    end

    def player_params 
        params.permit(:first_name, :last_name, :position, :coach_id, :sport_id)
    end

    def render_not_found_response
        render json: { errors: "Player not found" }, status: :not_found 
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
