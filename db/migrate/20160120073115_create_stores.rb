class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      
      t.string :storeName
      t.string :storeMenu
      t.string :leastPrice
      t.string :mostPrice
      t.string :phoneNumber
      t.string :runningTime
      t.string :latclicked
      t.string :lngclicked
      
      t.timestamps null: false
      
    end
  end
end
