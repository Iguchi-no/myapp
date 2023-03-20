class OwnersController < ApplicationController
  before_action :authenticate_owner!

  def top
    @schedules = Schedule.all
  end

end
