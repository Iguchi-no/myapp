class OwnersController < ApplicationController
  before_action :authenticate_owner!

  def top
  end
  
end
