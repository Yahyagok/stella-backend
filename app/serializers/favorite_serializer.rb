class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  belongs_to :actor
  attributes :actor, :user
end
