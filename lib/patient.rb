class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.map do |app|
      if app.patient == self 
        app 
      end
    end
  end
  
  def doctors 
    self.appointments.map do |app|
      if app != nil && app.patient == self 
        app.doctor 

      end
    end
  end
  
end