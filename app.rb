require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Place.all()
  erb(:index)
end

post("/success") do
  name = params.fetch("name")
  name = Place.new(name)
  name.save()
  erb(:success)
end

get("/fresh_start") do
  Place.clear()
  erb(:fresh_start)
end
