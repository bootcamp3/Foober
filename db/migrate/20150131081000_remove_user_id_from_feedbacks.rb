class RemoveUserIdFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :user_id
  end
end
