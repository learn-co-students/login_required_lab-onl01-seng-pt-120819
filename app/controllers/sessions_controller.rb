class SessionsController < ApplicationController 
 
def new
end

def show
    @session = Session.find(params[:id])
end

def index 
end

def create 
    if current_user && !params[:name].empty?
        redirect_to '/'
    else
        redirect_to '/login'
    end
end 

def destroy 
    session.delete :name 
end

end