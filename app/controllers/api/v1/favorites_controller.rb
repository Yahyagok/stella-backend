class Api::V1::FavoritesController < ApplicationController
    before_action :find_favorite, only: [:show, :update, :destroy]

    def index 
        favorites = Favorite.all
        render json: FavoriteSerializer.new(favorites)
    end 

    def show 

        render json: favorites
    end   
    
    def update 
        favorite.update(favorite_params)
        if favorite.save 
            render json: FavoriteSerializer.new(favorite), status: :accepted
        else
            render json: { errors: favorite.errors.full_messages }, status: :unprocessible_entity

        end 
    end 

    
    def destroy
        favorite.destroy
    end 


    def create 
        comment = Comment.new(comment_params)
        if comment.save 
            render json: comment, status: :accepted
        else
            render json: { errors: comment.errors.full_messages}, status: :unprocessible_entity
        end
    end 

    private

    def comment_params
        params.require(:comment).permit(:user_id, :actor_id)
    end 

    def find_comment
        comment = Comment.find(params[:id])

        render json: comment
    end 

end
