require("spec_helper")


describe(Venue) do

  it { should have_and_belong_to_many(:bands) }

  it("will ensure that the venue name is appropriately capitalized") do
    venue = Venue.create({:name => "the arlene schnitzer concert hall"})
    expect(venue.name()).to(eq("The Arlene Schnitzer Concert Hall"))
  end
end
