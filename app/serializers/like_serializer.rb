class LikeSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  belongs_to :actor
  attributes :user_id, :actor_id
end
