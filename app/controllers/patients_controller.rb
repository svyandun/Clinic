class PatientsController < ApplicationController
 
    before_filter :check_doctor
  def show
    @patient = Patient.find(params[:id])
    @appointments = @patient.appointments
  end

  def check_doctor
    if session[:user_id] == nil
        flash[:error] = "Primero debe iniciar sesion"
        redirect_to :action => "login", :controller => "sessions"
    end
  end

  

end
