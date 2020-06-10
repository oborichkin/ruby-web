class Like < ApplicationRecord

    belongs_to :user
    belongs_to :image

    validates :user, uniqueness: { scope: :image }

end
