class AdddPriorityToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :priority, :string
  end
end
