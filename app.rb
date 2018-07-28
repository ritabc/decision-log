require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get ('/') do
  @incorporated_decisions = Decision.where(":incorporated = true")
  erb(:index)
end
