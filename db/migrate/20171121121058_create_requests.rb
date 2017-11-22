class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.text :description
      t.integer :difficulty
      t.integer :ball_count

      t.timestamps null: false
    end
  end
end
