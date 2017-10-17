class CreateSiteswaps < ActiveRecord::Migration
  def change
    create_table :siteswaps do |t|
      t.string :name
      t.text :description
      t.decimal :difficulty
      t.string :image_url

      t.timestamps null: false
    end
  end
end
