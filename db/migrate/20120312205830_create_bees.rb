class CreateBees < ActiveRecord::Migration
  def change
    create_table :bees do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
