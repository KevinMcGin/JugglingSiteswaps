class CatalogueController < ApplicationController
 
  def index
    @siteswaps = Siteswap.order(:ball_count) 
  end
  
  def three_ball 
    @siteswaps= Siteswap.order(:difficulty)
  end
  
  def four_ball 
    @siteswaps= Siteswap.order(:difficulty)
  end
  
  def five_ball 
    @siteswaps= Siteswap.order(:difficulty)
  end
  
  def six_ball 
    @siteswaps= Siteswap.order(:difficulty)
  end
  
  def seven_ball 
    @siteswaps= Siteswap.order(:difficulty)
  end


end
