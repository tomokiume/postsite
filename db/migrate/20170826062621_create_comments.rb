class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.timestamps
      t.text :text
      t.string :name
      t.integer :user_id
    end
  end
end
