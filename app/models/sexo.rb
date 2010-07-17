class Sexo < ActiveRecord::Base
  has_many :estudiantes
  has_many :docentes
end
