class UserController < ApplicationController
    def new
    end
    
    def create 
        render plain: params[:user].inspect
    end
end
