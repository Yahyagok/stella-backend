class ActorSerializer
  include FastJsonapi::ObjectSerializer
  # include Rails.application.routes.url_helpers
  belongs_to :agency
  belongs_to :city
  has_many :likes
  has_many :users, through: :likes
  has_many :comments
  has_many :users, through: :comments
  has_many :favorites
  has_many :users, through: :favorites
  attributes :name, :image_url, :contact_info, :city, :agency, :description

  # def image
  #   if object.image.attached?
  #     {
  #       url: rails_blob_url(object.image),
  #       signed_id: object.image.signed_id
  #     }
  #   end
  # end



end
