require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require("pry")
require("bcrypt")

get ('/') do
  today = Date.today
  @unincorporated_decisions_past = Decision.where("incorporated = false AND review_by_date < ?", today).order(:review_by_date)
  @unincorporated_decisions_future = Decision.where("incorporated = false AND review_by_date > ?", today).order(:review_by_date)
  erb(:index)
end

get("/signup") do
  erb(:signup)
end

get("/login") do
  erb(:login)
end

post ('/signup') do
  user = User.new(:username => params[:username_signup], :password => params[:password_signup])
  if user.save
    session[:user_id] = user.id
  else
    redirect("/failure")
  end
end

get('/add') do
  if session[:user_id].empty?
    redirect("/login")
  else
    erb(:add_decision)
  end
end

post('/success') do
  @name = params["decision_name"]
  @decision = Decision.create({:decision_name => @name, :decision_date =>  params["decision_date"], :description => params["description"], :review_by_date =>  params["review_by_date"], :supp_doc_one_type => params["supp_doc_one_type"], :supp_doc_one_link =>  params["supp_doc_one_link"], :supp_doc_two_type =>  params["supp_doc_two_type"], :supp_doc_two_link => params["supp_doc_two_link"]})
  erb(:success)
end

post("/login") do
  user = User.find_by(:username => params[:username_login])
  if user && user.authenticate(params[:password_login])
    session[:user_id] = user.id
    redirect("/")
  else
    redirect("/failure")
  end
end

get("/logout") do
  session.clear
  redirect("/")
end
