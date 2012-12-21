class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  has_many  :comments
  #embed :authors

  #if we only want a single one
  #def comments
  #  Array(article.comments.first)
  #end
end
