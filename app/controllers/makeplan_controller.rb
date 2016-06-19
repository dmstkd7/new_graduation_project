class MakeplanController < ApplicationController
    
    before_action :authenticate_user!
    
    
    def makeplan
        @places = Place.all.reverse
    end
    
    
    def create
       Place.create(name: params[:name], content: params[:content], position: params[:position]) 
       redirect_to :makeplan
    end
    
    
end
