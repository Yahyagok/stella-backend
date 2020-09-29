class Like < ApplicationRecord
    belongs_to :user, dependent: :destroy
    belongs_to :actor, dependent: :destroy
end
