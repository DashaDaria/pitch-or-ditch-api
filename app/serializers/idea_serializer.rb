class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :category_id, :author, :content, :votes, :category_name

  def category_name
    object.category.name
  end
end
