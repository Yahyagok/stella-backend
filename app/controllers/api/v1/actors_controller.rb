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
        # binding.pry
    
        actor = Actor.new(actor_params)
        # if params[:file]
        #     actor.image_element.image.attach([:file])
        #     photo = url_for(actor.image_element.image)
        # elsif params[:image_url]
        #     blob = ActiveStorage::Blob.create_after_upload!(
        #         io: StringIO.new((Base64.decode64(params[:image_url].split(",")[1]))),
        #         filename: "actor.png",
        #         content_type: "image/png, image/jpeg, image/jpg",
        #       )
        #       binding.pry
        #       actor.image_element.image.attach(blob)
        #       photo = url_for(actor.image_element.image)
        # else 
        #     photo = photo_params[:photo]
        # end 

        # binding.pry

        if actor.save 
            render json: ActorSerializer.new(actor), status: :accepted
            # binding.pry
        else
            render json: { errors: actor.errors.full_messages}, status: :unprocessible_entity
        end
    end 

    private
    def actor_params
        params.permit(:name, :image_url, :image, :contact_info, :city_id, :agency_id, :description )
    end 

    def find_actor 
        actor = Actor.find(params[:id])   
        render json: ActorSerializer.new(actor)
    end 
end
