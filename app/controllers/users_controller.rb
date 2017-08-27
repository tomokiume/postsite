class UsersController < ApplicationController
  def show
    @question=Question.where(user_id: params[:id])
    @user = User.find(params[:id])
    @follower=User.find(params[:id])
  end

  def follower
    @followers = Like.where(follower_id: params[:id])
  end

end
