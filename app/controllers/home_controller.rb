class HomeController < ApplicationController
  def index
    @doctors = Doctor.last(3)
  end
end
