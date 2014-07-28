class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @users = Users.find_by_id(params['id'])
  end
  
  def new
    
  end 
  
  def create
    g = Users.new
    g.name = params['name']
    g.email = params['email']
    g.save
    redirect_to "/user/#{ g.id }"
  end
  
end
