class CatalogueController < ApplicationController
  def index
    @siteswaps = Siteswap.order(:difficulty)
  end
end
