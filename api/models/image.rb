class Image

  attr_reader :url

  def initialize(flickraw_photo)
    @flickraw_photo = flickraw_photo
  end

  def self.search(text, limit = 10)
    search_args = { text: text, per_page: 10, sort: 'interestingness-desc' }
    discovered_pictures = flickr.photos.search search_args
    discovered_pictures.map{ |pic| self.new pic}
  end

  def title
    @flickraw_photo.title
  end

  def author
    return @author if @author
    owner = flickr.people.getInfo({ user_id: @flickraw_photo.owner })
    @author = owner.username
  end

  def url
    FlickRaw.url @flickraw_photo
  end

  def to_json
    {
      title: title,
      author: author,
      url: url
    }.to_json
  end

end
