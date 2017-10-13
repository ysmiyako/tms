class RankingController < ApplicationController
    def index
     @users = User.all
     @movie = User.select("movie")
    end
    
    def show
        @user = User.find(params[:id])
    end
end
