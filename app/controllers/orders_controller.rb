class OrdersController < ApplicationController
  before_filter :authentication?

  def new
    @order = Order.new
    @order.user = current_user
    @order.status = "pending"    
    @order.save
    
    redirect_to main_branch_path
  end
end
