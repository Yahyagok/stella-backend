class Comment < ApplicationRecord
    belongs_to :user, dependent: :destroy
    belongs_to :actor, dependent: :destroy
end
