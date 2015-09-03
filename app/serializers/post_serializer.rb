class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :num_comments
  
  def num_comments
    object.comments.count(:id)
  end
end
