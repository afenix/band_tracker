require('spec_helper')

describe(Band) do

    it { should have_and_belong_to_many(:venues) }

    it("will ensure that the band name is appropriately capitalized") do
      band = Band.create({:name => "the arlene schnitzer concert hall"})
      expect(band.name()).to(eq("The Arlene Schnitzer Concert Hall"))
    end

    it("will ensure that users will enter a band name into the form") do
      band = Band.create({:name => ""})
      expect(band.save()).to(eq(false))
    end
end
