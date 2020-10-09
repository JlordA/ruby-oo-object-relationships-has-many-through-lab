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

    # def new_appointment(patient, date)
    #     Appointment.new(date, patient, self)
    # end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        # appointments.map(&:patient)
        # binding.pry
        Appointment.all.select { |apt| apt.doctor == self }
    end
    
    def patients
        appointments.collect { |apt| apt.patient }
#         that iterates over
#   that doctor's `Appointment`s and collects the patient that belongs to each
#   `Appointment`s.
    end
end