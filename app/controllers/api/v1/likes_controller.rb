class Api::V1::LikesController < ApplicationController
    before_action :find_like, only: [:show, :update, :destroy]


    def index 
        likes = Like.all
        render json: LikeSerializer.new(likes)
    end 

    def show 

        render json: like
    end   
    
    def update 
        like.update(comment_params)
        if like.save 
            render json: LikeSerializer.new(like), status: :accepted
        else
            render json: { errors: like.errors.full_messages }, status: :unprocessible_entity

        end 
    end 

    
    def destroy
        like.destroy
    end 


    def create 
        like = Like.new(like_params)
     
        if already_liked?
          render json: { errors: like.errors.full_messages}, status: :unprocessible_entity 
        elsif  like.save 
            render json: LikeSerializer.new(like), status: :accepted
        else
            render json: { errors: like.errors.full_messages}, status: :unprocessible_entity
        end
    end 

    private

  

    def like_params
        params.require(:like).permit(:user_id, :actor_id)
    end 

    def find_like
        like = Like.find(params[:id])

        render json: like
    end 

end
