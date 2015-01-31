class OrdersController < ApplicationController

  def new
    @order = Order.new
    @order.user = current_user
    @order.status = "pending"    
    @order.save
    
    redirect_to main_branch_path
  end
end
