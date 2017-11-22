class RequestSubmitController < ApplicationController
  skip_before_action :authorize
  def index
    @request = Request.new  
  end
end
