class Api::V1::CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :update, :destroy]

    def index 
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end 

    def show 

        render json: comment
    end   
    
    def update 
        comment.update(comment_params)
        if comment.save 
            render json: comment, status: :accepted
        else
            render json: { errors: comment.errors.full_messages }, status: :unprocessible_entity

        end 
    end 

    
    def destroy
        comment.destroy
    end 


    def create 
        comment = Comment.new(comment_params)
        if comment.save 
            render json: CommentSerializer.new(comment), status: :accepted
        else
            render json: { errors: comment.errors.full_messages}, status: :unprocessible_entity
        end
    end 

    private

    def comment_params
        params.require(:comment).permit(:user_id, :actor_id, :review)
    end 

    def find_comment
        comment = Comment.find(params[:id])

        render json: comment
    end 

end
