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
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end 
  
  def appointments 
    Appointment.all.map do |app|
      if app.doctor == self 
        app 
      end
    end
  end
  
  def patients 
    Appointment.all.map do |app|
      if app.doctor == self
        app.patient
     # binding.pry 
      end
    end
  end
  
  
end