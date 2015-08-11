require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Place.all()
  erb(:index)
end

post("/success") do
  @places = Place.all()
  name = params.fetch("name")
  name = Place.new(name)
  name.save()
  erb(:index)
end

get("/fresh_start") do
  @places = Place.all()
  Place.clear()
  erb(:index)
  # sleep(3)
  # click_link('meh')
end
