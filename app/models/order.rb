class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :chef
  belongs_to :recipe

  state_machine :status, :initial => :pending do
    state :pending
    state :chef_confirmed
    state :menu_decided
    state :set_up
    state :meal_end

    event :chef_confirm do
      transition :pending => :chef_confirmed
      transition :menu_decided => :set_up
    end

    event :menu_decide do
      transition :pending => :menu_decided
      transition :chef_confirmed => :set_up
    end

    event :finish do
      transition :set_up => :meal_end
    end
  end
end
