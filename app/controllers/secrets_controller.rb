class SecretsController < ApplicationController
    before_action :is_logged_in
    
    def show
    end



    private

        def is_logged_in
            unless session.include? :name
                redirect_to :login
            end
        end  

    end