class MakeChamgesToProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :title, :name
    change_column :products, :description, :text
    change_column :products, :price, "numeric USING CAST(price AS numeric)", precision: 7, scale: 2
    remove_column :products, :isbn, :string
  end
end
