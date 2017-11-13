class CatalogueController < ApplicationController
  def index
    @siteswaps = Siteswap.order(:ball_count)
  end
end
