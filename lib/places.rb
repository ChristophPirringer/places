class Place

  @@all_places = []

  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@all_places
  end
end
