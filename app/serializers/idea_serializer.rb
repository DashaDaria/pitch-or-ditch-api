class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :category_id, :author, :content, :votes
end
