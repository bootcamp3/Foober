class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :chef_id
      t.string :chef_to_user
      t.string :user_to_chef
      t.timestamps null: false
    end
  end
end
