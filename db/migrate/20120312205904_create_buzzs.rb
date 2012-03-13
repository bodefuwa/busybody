class CreateBuzzs < ActiveRecord::Migration
  def change
    create_table :buzzs do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
