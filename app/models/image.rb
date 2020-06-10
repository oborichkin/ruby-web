class Image < ApplicationRecord

    belongs_to :theme
    has_many :likes

    scope :theme_images, -> (theme_id) {
        select('id','name','file','avg_value').where(theme_id: theme_id)
    }

    def get_likes
        result = 0

        self.likes.each do |like|
            if like.good
                result += 1
            else
                result -= 1
            end
        end

        return result
    end

end
