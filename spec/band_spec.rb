require('spec_helper')

describe(Band) do

    it { should have_and_belong_to_many(:venues) }

    it("will ensure that the band name is appropriately capitalized") do
      band = Band.create({:name => "the arlene schnitzer concert hall"})
      expect(band.name()).to(eq("The Arlene Schnitzer Concert Hall"))
    end

end
