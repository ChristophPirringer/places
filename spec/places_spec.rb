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

  describe(".all") do
    it("return array of all the Places") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('saves the object in the Class array') do
      @test_place.save()
      expect(Place.all()).to(eq([@test_place]))
    end
  end
end
