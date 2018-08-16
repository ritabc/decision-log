class User < ActiveRecord::Base
  has_secure_password

  def logged_in_class
    session[:user_id]
  end
end
