require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @bands = Band.all()
  erb(:index)
end

post('/bands') do
  name = params.fetch('name')
  venue = params.fetch('venue')
  @band = Band.new({:name => name})
  @venue = Venue.new({:name => venue})
  @band.save()
  @venue.save()
  if @band.save()
    erb(:success)
  else
    erb(:errors)
  end
  if @venue.save()
    erb(:success)
  else
    erb(:errors)
  end
end

get('/bands/:id') do
  @band = Band.find(params.fetch("id"))
  erb(:band)
end

patch('/bands/:id/edit') do
end
