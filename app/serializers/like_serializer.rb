class LikeSerializer < ActiveModel::Serializer
  attributes :id, :good, :image_id, :user_id
end
