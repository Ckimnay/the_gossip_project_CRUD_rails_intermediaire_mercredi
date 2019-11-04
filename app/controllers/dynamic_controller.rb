class DynamicController < ApplicationController

    def welcome
        @first_name = params[:first_name] 
        @gossip = Gossip.all  
    end

    def user
        @user = User.find(params[:user_id])
    
    end
end
