class UsersController < ApplicationController
    
    def show
        @nickaname = current_user.nickname
        @tweets = current_user.tweets.page(params[:page]).per(5)
    end
end
