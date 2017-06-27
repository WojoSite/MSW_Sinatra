class Appointment < ActiveRecord::Base
  has_many :doctors
  has_many :patients
end

class Patient < ActiveRecord::Base
  has_one :emr
  has_many :appointments
  has_many :doctors, through: :appointments
end

class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :clinic
end

class Clinic < ActiveRecord::Base
  has_many :doctors
end

class Emr < ActiveRecord::Base
  belongs_to :patient
end
