class Api::V1::CitiesController < ApplicationController
    before_action :find_city, only: [:show, :update, :destroy]

    def index 
        cities = City.all
        render json: CitySerializer.new(cities)
    end 

    def show 

        render json: city
    end   
    
    def update 
        city.update(city_params)
        if city.save 
            render json: CitySerializer.new(city), status: :accepted
        else
            render json: { errors: city.errors.full_messages }, status: :unprocessible_entity

        end 
    end 

    
    def destroy
        city.destroy
    end 


    def create 
        city = City.new(city_params)
        if city.save 
            render json: city, status: :accepted
        else
            render json: { errors: city.errors.full_messages}, status: :unprocessible_entity
        end
    end 

    private

    def city_params
        params.require(:city).permit(:name)
    end 

    def find_city 
        city = City.find(params[:id])

        render json: city
    end 
    
end
