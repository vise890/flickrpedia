get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/api/:search_term' do
  content_type :json
  Article.find(params['search_term']).to_json
end
