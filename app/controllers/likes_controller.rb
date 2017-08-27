class LikesController < ApplicationController

  def create
    likes=Like.create(user_id: current_user.id, name: current_user.name, follower_id: params[:user_id])

  end
end
