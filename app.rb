require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @bands = Band.all()
  erb(:index)
end

post('/bands') do
  Band.create(:name => params.fetch('name'))
  redirect('/')
end

get('/bands/:id') do
  id = params.fetch('id').to_i()
  @band = Band.find(id)
  erb(:band)
end
