class SessionsController < ApplicationController

    def new 
    end 

    def create 
        if !params[:name] || params[:name].empty?
            redirect_to "/login"
        else 
            session[:name] = params[:name]
        end 
    end 

    def destroy
        session.delete :name if session[:name]
    end 

end 