require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  erb(:index)
end

get('/bands') do
  @bands = Band.all()
  erb(:band)
end

get('/venues') do
  @venues = Venue.all()
  erb(:venue)
end

post('/bands') do
  name = params.fetch('name')
  @band = Band.new({:name => name})
  if @band.save()
    redirect to('/bands')
  else
    erb(:errors)
  end
end

patch('/bands/:id/edit') do
  @band = Band.find(params.fetch("name"))
  @band.update({:name => name })
  @bands = Band.all()
  erb(:index)
end

patch('/add_venues') do
  band = Band.find(params.fetch("band_id"))
  @venues = Venue.all()
  venue_ids = params.fetch("venue_ids")
  venue_ids.each do |id|
    venue = Venue.find(id)
    band.venues.push(venue)
  end
  redirect to('/bands')
end


delete('/bands/:id/delete') do
  @band = Band.find(params.fetch("id"))
  @band.delete()
  @bands = Band.all()
  erb(:index)
end


post('/venues') do
  venue = params.fetch('venue')
  @venue = Venue.new({:name => venue})
  @venue.save()
  if @venue.save()
    redirect to('/venues')
  else
    erb(:errors)
  end
end

get('/bands/:id') do
  @band = Band.find(params.fetch("id"))
  @venues = Venue.all()
  erb(:edit_band)
end

get('/venues/:id') do
  @venue = Venue.find(params.fetch("id"))
  @venues = Venue.all()
  erb(:venue)
end
