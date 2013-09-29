get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/api/:search_term' do
  content_type :json
  search_term = params['search_term'].gsub('-', ' ')
  Article.find(search_term).to_json
end
