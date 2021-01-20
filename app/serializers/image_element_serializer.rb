class ImageElementSerializer
    include FastJsonapi::ObjectSerializer
    belongs_to :actor
   
    attributes :photo
  end