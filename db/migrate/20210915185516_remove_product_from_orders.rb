class RemoveProductFromOrders < ActiveRecord::Migration[6.1]
  def change
    def change
      remove_column :orders, :product_id, :integer
    end
  end
end
