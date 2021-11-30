class HomeController < ApplicationController
  def index
    @patients = Patient.all
    @active_patients = @patients.where(active: true).count
    @inactive_patients = @patients.where(active: false).count
  end

  def about
  end
end
