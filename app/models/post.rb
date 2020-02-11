class Post < ApplicationRecord
  include RankedModel
  validates :title, presence: true
  belongs_to :user
  ranks :row_order ,with_same: :user_id
end
