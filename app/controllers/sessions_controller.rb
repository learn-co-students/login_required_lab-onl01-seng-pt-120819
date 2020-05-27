class SessionsController < ApplicationController

    def new
        #byebug
        session[:name] = params[:name]
    end

    def show
        #yebug
        session[:name] = params[:name]
    end

    def index
        #byebug
    end
    
    def create
       
        session[:name] = params[:name]
       
        if session[:name] == nil || session[:name] == ""
         redirect_to "/login"
        else
         redirect_to '/show'
        end
     end

    def destroy
        session.delete :name
    end


end
