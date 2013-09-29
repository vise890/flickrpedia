article_titles = %w[
  mammal
  reptile
  crocodilia
]


article_titles.each do |title|
  #`open http://flickrpedia.herokuapp.com/#/#{title}`
  `open http://localhost:9393/#/#{title}`
end
