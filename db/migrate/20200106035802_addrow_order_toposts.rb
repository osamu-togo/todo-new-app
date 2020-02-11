class AddrowOrderToposts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :row_order, :integer
  end
end
