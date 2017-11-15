class AddBallCountToSiteswaps < ActiveRecord::Migration
  def change
    add_column :siteswaps, :ball_count, :integer
  end
end
