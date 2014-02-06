class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_login
  def check_login
    if session[:user_id] == nil
        @is_logged = false
    else
        @is_logged = true
    end 
end 

end
