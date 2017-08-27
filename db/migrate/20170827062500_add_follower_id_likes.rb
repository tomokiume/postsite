class AddFollowerIdLikes < ActiveRecord::Migration
  def change
     add_column :likes, :follower_id,:integer
  end
end
