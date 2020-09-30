class Api::V1::AgenciesController < ApplicationController
    before_action :find_agency, only: [:show, :update, :destroy]

    def index 
        agencies = Agency.all
        render json: AgencySerializer.new(agencies)
    end 

    def show 

        render json: agency
    end   
    
    def update 
        agency.update(agency_params)
        if agency.save 
            render json: AgencySerializer.new(agency), status: :accepted
        else
            render json: { errors: agency.errors.full_messages }, status: :unprocessible_entity

        end 
    end 

    
    def destroy
        agency.destroy
    end 


    def create 
        agency = Agency.new(agency_params)
        if agency.save 
            render json: agency, status: :accepted
        else
            render json: { errors: agency.errors.full_messages}, status: :unprocessible_entity
        end
    end 

    private

    def agency_params
        params.require(:agency).permit(:name, :location )
    end 

    def find_agency 
        agency = Agency.find(params[:id])

        render json: agency
    end 

end
