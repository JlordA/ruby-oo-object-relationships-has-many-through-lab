require 'pry'
class Patient

    attr_accessor :name #:doctor

    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # def new_appointment(doctor, date)
    #     Appointment.new(self, doctor, date)
    # end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{ |apt| apt.patient == self}
        # binding.pry
        # that iterates
        # through the `Appointment`s array and returns `Appointment`s that belong to the
        # patient.
    end

    def doctors
        # appointments.map(&:doctor)
        appointments.collect { |apt| apt.doctor }
        # that iterates over
        # that patient's `Appointment`s and collects the doctor that belongs to each
        # `Appointment`.
    end

end