class CommentSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  belongs_to :actor
  attributes :user, :actor, :review
end
