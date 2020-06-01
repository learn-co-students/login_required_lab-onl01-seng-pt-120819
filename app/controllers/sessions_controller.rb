class SessionsController < ApplicationController

    def new
       

    end

    
    def create
        # binding.pry
        if params[:name] != "" && params[:name] != nil
            session[:name] = params[:name]
            redirect_to welcome_path
        else 
            redirect_to login_path
        end


    end

    def destroy
        # if current_user
        session.delete :name
        # end


    end


end
