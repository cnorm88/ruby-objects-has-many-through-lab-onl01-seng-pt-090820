require 'pry'
class Doctor
  attr_accessor :name

  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|pat| pat.doctor == self}
  end
  

  def patients
    # Appointment.collect do |pat|
    # pat.patient
    # end

  self.appointments.collect {|app| app.patient}
  end

end





