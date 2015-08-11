require("rspec")
require("places")

describe Place do

  before() do
    @test_place = Place.new("cool foodstands")
  end

  describe("#name")do
    it("displays the name of the visited place")do
      expect(@test_place.name()).to(eq("cool foodstands"))
    end
  end

end
