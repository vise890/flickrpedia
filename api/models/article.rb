class Article

  require 'flickraw'
  require 'wikipedia'

  FlickRaw.api_key= ENV['api_key']
  FlickRaw.shared_secret=ENV['shared_secret']

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
    args = {title: page.title, content: page.content }
    article = Article.new(args)
    article.images = article.get_images(article.title).map{|urls| Image.new({url: url}) }
    article
  end
end
