class Article

  attr_accessor :title, :images, :content

  def initialize(args)
    @title =  args[:title]
    @content = args[:content]
    @images =  []
  end

  def get_images(tag)
    search_args = { tags: tag, per_page: 10, sort: 'interestingness-desc' }
    discovered_pictures = flickr.photos.search search_args
    discovered_pictures.map{|pic| FlickRaw.url pic}
  end

  def self.find(term)
    page = Wikipedia.find(term)
    args = {title: page.title, content: page.content }
    article = Article.new(args)
    article.images = article.get_images(article.title).map{|url| Image.new({url: url}) }
    article
  end

  def to_json
    images = @images.map do |image|
      JSON.parse image.to_json
    end

    {
      title: @title,
      # content: @content,
      images: images
    }.to_json

  end
end
