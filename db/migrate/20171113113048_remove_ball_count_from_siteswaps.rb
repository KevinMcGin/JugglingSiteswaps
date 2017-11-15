class RemoveBallCountFromSiteswaps < ActiveRecord::Migration
  def change
    remove_column :siteswaps, :ball_count, :integer
  end
end
