class Article

  attr_accessor :title

  def initialize(args)
    @title =  args[:title]
  end

  def images
    raise 'No title for current article' unless title
    @images || Image.search(title)
  end

  def self.find(term)
    page = Wikipedia.find(term)
    args = {title: page.title, content: page.content }
    Article.new(args)
  end


  def url
    "http://en.wikipedia.org/wiki/#{@title.gsub(' ', '_')}"
  end

  def content
    return @content if @content
    source = open(self.url).read
    @content = Readability::Document.new(source, tags: %w[div p a], attributes: %w[href]).content
    @content.gsub!(%r!href="/wiki!, "href=\"#")
  end

  def to_json
    images = self.images.map do |image|
      JSON.parse image.to_json
    end

    {
      title: title,
      content: content,
      images: images
    }.to_json

  end
end
