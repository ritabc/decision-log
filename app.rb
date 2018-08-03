require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require("pry")

get ('/') do
  today = Date.today
  @unincorporated_decisions_past = Decision.where("incorporated = false AND review_by_date < ?", today).order(:review_by_date)
  @unincorporated_decisions_future = Decision.where("incorporated = false AND review_by_date > ?", today).order(:review_by_date)
  erb(:index)
end

get('/add') do
  erb(:add_decision)
end

post('/success') do
  @name = params["decision_name"]
  @decision = Decision.create({:decision_name => @name, :decision_date =>  params["decision_date"], :description => params["description"], :review_by_date =>  params["review_by_date"], :supp_doc_one_type => params["supp_doc_one_type"], :supp_doc_one_link =>  params["supp_doc_one_link"], :supp_doc_two_type =>  params["supp_doc_two_type"], :supp_doc_two_link => params["supp_doc_two_link"]})

end
