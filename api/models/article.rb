class Article

  require 'flickraw'
  require 'wikipedia'

  attr_reader :title, :pictures, :content

  def initialize(args)
    @title =  args[:title]
    @content = args[:content]
    @images =  []
  end

  def get_images(tag)
    search_args = { tags: tag, per_page: 10  }
    discovered_pictures = flickr.photos.search search_args
    discovered_pictures.map{|pic| FlickRaw.url pic}
  end

  def self.find(term)
    page = Wikipedia.find(term)
    article = Article.new(page)
    aritcle.images = article.get_images(article.title).map{|urls| Image.new({url: url}) }
    article
  end
end
