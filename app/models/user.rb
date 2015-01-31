class User < ActiveRecord::Base
  has_many :orders
  has_many :feedbacks
  has_many :chef, through: :feedbacks
end
