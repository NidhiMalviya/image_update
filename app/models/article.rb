class Article < ApplicationRecord
  has_one_attached :image
  before_create :set_article_image
  def self.search(search)
      if search
          Article.where("title LIKE '%#{search}%' OR description LIKE '%#{search}%'")
      else
          Article.all
      end
  end
  
  def set_article_image
    byebug
     self.article_image = Base64.decode64('/home/user29/Downloads/Search-master/Photo/search.png').to
  end

end
