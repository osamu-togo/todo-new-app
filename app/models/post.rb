class Post < ApplicationRecord
  include RankedModel
  ranks :row_order ,with_same: :user_id
  validates :title, presence: true
  belongs_to :user
  belongs_to :task
  accepts_nested_attributes_for :task
  
end
