class AddNameToOwners < ActiveRecord::Migration[7.0]
  def change
    add_column :owners, :name, :string
    add_column :owners, :shop_name, :string
    add_column :owners, :owner_id, :string
  end
end
