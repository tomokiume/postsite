class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|


      t.text :text
      t.string :name
      t.text :image
      t.timestamps
    end
  end
end
