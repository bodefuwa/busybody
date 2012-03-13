class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :phone
      t.string :email
      t.string :site

      t.timestamps
    end
  end
end
