class Api::V1::ActorsController < ApplicationController

    before_action :find_actor, only: [:show, :update, :destroy]

    def index 
        actors = Actor.all
        render json: ActorSerializer.new(actors)
    end 

    def show 

        render json: actor
    end   
    
    def update 
        actor.update(actor_params)
        if actor.save 
            render json: ActorSerializer.new(actor), status: :accepted
        else
            render json: { errors: actor.errors.full_messages }, status: :unprocessible_entity

        end 
    end 

    
    def destroy
        actor.destroy
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

    def find_actor 
        actor = Actor.find(params[:id])

        render json: actor
    end 
end
