class SessionsController < ApplicationController 
 
def new
end

def show
    @session = Session.find(params[:id])
end

def index 
end

def create 
    if params[:name] && !params[:name].empty?
        session[:name] = params[:name]
        redirect_to '/'
    else
        redirect_to '/login'
    end
end 

def destroy 
    session.delete :name 
end

end