class AppointmentsController < ApplicationController
  def index
    @appointment = Appointment.new
    @appointments = Appointment.order(apt_time: :asc)
  end

  def create
    @appointments = Appointment.order(apt_time: :asc)
    @appointment = Appointment.create(appointment_params)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:title, :apt_time)
  end
end
