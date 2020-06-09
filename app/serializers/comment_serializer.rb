class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :theme_id, :user_id
end
