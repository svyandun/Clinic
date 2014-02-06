class DoctorsController < ApplicationController
  
    before_filter :check_doctor
  def show
    @doctor = Doctor.find(params[:id])
    @patients = @doctor.patients
  end

  def check_doctor
    if session[:user_id] == nil
        flash[:error] = "Primero debe iniciar sesion"
        redirect_to :action => "login", :controller => "sessions"
    end
  end
  
  def index
  end

 

end
