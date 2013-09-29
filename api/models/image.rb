class Image

  attr_reader :url

  def initialize(args)
    @url = args[:url]
  end

  def to_json
    {
      url: @url
    }.to_json
  end

end
