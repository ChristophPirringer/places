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
    it('saves the place in the Places array') do
      @test_place.save()
      expect(Place.all()).to(eq([@test_place]))
    end
  end

  describe('.clear') do
    it('clears the Places array') do
      @test_place.save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
