require("spec_helper")


describe(Venue) do

  it { should have_and_belong_to_many(:bands) }

  it("will ensure that the venue name is appropriately capitalized") do
    venue = Venue.create({:name => "the arlene schnitzer concert hall"})
    expect(venue.name()).to(eq("The Arlene Schnitzer Concert Hall"))
  end

  it("will ensure that the user enters a name for the venue in the form") do
    venue = Venue.new({:name => ""})
    expect(venue.save()).to(eq(false))
  end

end
