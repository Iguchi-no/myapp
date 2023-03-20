class OwnersController < ApplicationController
  before_action :authenticate_owner!

  def top
    @schedules = Schedule.all
    @employees = Employee.all
  end

end
