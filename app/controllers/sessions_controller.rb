class SessionsController < ApplicationController
  def login
    
  end

  def login_attempt
  	doctor = Doctor.where(username: params[:username]).first
  	if doctor && doctor.password == params[:password]
  		session[:user_id] = doctor.id
  		redirect_to doctor
  	else
  		flash[:error] = "Nombre de usuario o contrasena incorrecto"
  		render 'login'
  	end
  end

  def logout 
    session[:user_id] = nil
    flash[:error] = "Ha cerrado sesion"
    redirect_to  action: "login"
  end

end
