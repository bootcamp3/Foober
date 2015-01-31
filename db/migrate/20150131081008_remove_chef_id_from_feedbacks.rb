class RemoveChefIdFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :chef_id
  end
end
