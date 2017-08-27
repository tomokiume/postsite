class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|

      t.timestamps
      t.text :name
      t.string :like_number
      t.string :user_id
    end
  end
end
