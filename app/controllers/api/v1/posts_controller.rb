class Api::V1::PostsController < ApplicationController
  before_action :get_user
  def index
    @posts = User.find(params[:user_id]).posts
    render json: @posts.to_json
  end

  def show
  end

  def create
  end

  private
    def get_user
      puts "I AM IN GET USER"
      @user = User.find(params[:user_id])
      puts "\n\n\n #{@user.username} \n\n\n"
    end
end
