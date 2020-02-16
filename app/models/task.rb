class Task < ApplicationRecord
  
  has_many :users, through: :user_tasks
  has_many :user_tasks 
  accepts_nested_attributes_for :user_tasks
  has_many :posts
end
