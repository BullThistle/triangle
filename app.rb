require('sinatra')
require('sinatra/reloader')

require ('./lib/triangles') # ./lib not .lib

get('/triangle') do
  erb(:input)
end

get('/output') do
  @side_1 = params.fetch("side_1")
  @side_2 = params.fetch("side_2")
  @side_3 = params.fetch("side_3")
  tri = Triangles.new(@side_1, @side_2, @side_3)
  @answer = tri.tri_type
  erb(:output)
end
