class RankingController < ApplicationController
    def index
     @users = User.order('time ASC').page(params[:page])
     
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    
    def show28
        range = Date.new(2017,10,28).beginning_of_day..Date.new(2017,10,28).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
    
    def show29
        range = Date.new(2017,10,29).beginning_of_day..Date.new(2017,10,29).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
    def show30
        range = Date.new(2017,10,30).beginning_of_day..Date.new(2017,10,30).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
    def show31
        range = Date.new(2017,10,31).beginning_of_day..Date.new(2017,10,31).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
    def show01
        range = Date.new(2017,11,01).beginning_of_day..Date.new(2017,11,01).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
    def show02
        range = Date.new(2017,11,02).beginning_of_day..Date.new(2017,11,02).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
    def show03
        range = Date.new(2017,11,03).beginning_of_day..Date.new(2017,11,03).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
    def show04
        range = Date.new(2017,11,04).beginning_of_day..Date.new(2017,11,04).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
    def show05
        range = Date.new(2017,11,05).beginning_of_day..Date.new(2017,11,05).end_of_day
        @users = User.where(created_at: range).order('created_at ASC').page(params[:page]).per(20)
    end
end
