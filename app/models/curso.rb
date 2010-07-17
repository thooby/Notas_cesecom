class Curso < ActiveRecord::Base
  belongs_to :materia
  belongs_to :nivel
  belongs_to :docente
  has_many :creditos
  has_many :estudiantes, :through => :creditos
end
