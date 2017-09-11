require('sinatra')
require('sinatra/reloader')

get('/triangle') do
  erb(:input)
end
