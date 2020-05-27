class SecretsController < ApplicationController

    before_action :require_login

    def show
         #byebug
         session[:name] = params[:name]
    end


    private

    def require_login
        #byebug
        #return head(redirect_to controller: 'sessions', action: 'new') unless session.include? :name
        redirect_to new_sessions_path unless session.include? :name
    end

end
