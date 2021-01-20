class ImageElementsController < ApplicationController 
    before_action :find_image_element, only: [ :update, :destroy]
    def update
        image_element.update(image_element_params)

        if image_element.save 
            render json: Image_ElementSerializer.new(image_element), status: :accepted
        else
            render json: { errors: image_element.errors.full_messages }, status: :unprocessible_entity
        end 
    end   

    def destroy
        image_element.destroy
    end 

    def create
        binding.pry
        if params[:file]
            image_element.image.attach([:file])
            photo = url_for(image_element.image)
        elsif params[:image_url]
            blob = ActiveStorage::Blob.create_after_upload!(
                io: StringIO.new((Base64.decode64(params[:image_url].split(",")[1]))),
                filename: "actor.png",
                content_type: "image/png, image/jpeg, image/jpg",
              )
              image_element.image.attach(blob)
              photo = url_for(image_element.image)
        else 
            photo = photo_params[:photo]
        end 
        if image_element.new(photo: photo)
            render json: Image_ElementSerializer.new(image_element), status: :ok

        # image_element = actor.image_element
        # image_element = Image_Element.new(image_element_params)
        # if image_element.image.attach(image_element_params[:image])
        #     image_element.save
        #     render json: Image_ElementSerializer.new( image_element), status: :accepted  
        # else
        #     render json: { errors: image_element.errors.full_messages}, status: :unprocessible_entity
        # end
    end 

    private
    def image_element_params
        params.require(:image_element).permit(:image, :photo )
    end 

    def find_image_element 
        image_element = Image_Element.find(params[:id])   
        render json: Image_ElementSerializer.new(image_element)
    end 
end 