class AppointmentsController < ApplicationController
  
  before_filter :check_doctor

  def check_doctor
    if session[:user_id] == nil
        flash[:error] = "Primero debe iniciar sesion"
        redirect_to :action => "login", :controller => "sessions"
    end
  end
  
  def new
    @appointment = Appointment.new
    @patient_id = params[:patient_id]
    @treatments = Treatment.where(:specialty_id => Doctor.find(session[:user_id]).specialty_id)
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    @appointment.doctor_id = session[:user_id]
      if @appointment.save
        redirect_to @appointment
      else
        render action: "new"
      end
  end

  def show
     @appointment = Appointment.find(params[:id])

  end
end
