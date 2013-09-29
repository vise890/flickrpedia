get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/api/:search_term' do
  content_type :json
  search_term = params['search_term'].downcase.gsub('-', ' ')

  cached_article = $redis_client.get(search_term)
  if cached_article
    return cached_article
  else

    article = Article.find(search_term)
    raise 'No images found!' if article.images.empty?

    cached_article = article.to_json
    $redis_client.set(search_term, cached_article)
    return cached_article
  end
end
