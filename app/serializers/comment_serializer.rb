class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :post
end
