require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get ('/') do
  @decisions_needing_review_by_review_date = Decision.where().all.order(:review_by_date)
  erb(:index)
end
