class Article

  attr_accessor :title, :content

  def initialize(args)
    @title =  args[:title]
    @content = args[:content]
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

  def to_json
    images = self.images.map do |image|
      JSON.parse image.to_json
    end

    {
      title: @title,
      # content: @content,
      images: images
    }.to_json

  end
end
