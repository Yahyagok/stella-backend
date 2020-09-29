class Api::V1::ActorsController < ApplicationController
    def index 
        actors = Actor.all
        render json: ActorSerializer.new(actors)
    end 


    def create 
        actor = Actor.new(actor_params)
        if actor.save 
            render json: actor, status: :accepted
        else
            render json: { errors: actor.errors.full_messages}, status: :unprocessible_entity
        end
    end 

    private

    def actor_params
        params.require(:actor).permit(:name, :image, :contact_info, :city_id, :agency_id, :movies, :description )
    end 
end
