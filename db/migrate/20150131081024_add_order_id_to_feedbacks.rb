class AddOrderIdToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :order_id, :integer
  end
end
