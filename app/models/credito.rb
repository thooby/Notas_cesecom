class Credito < ActiveRecord::Base
  has_many :notas
  belongs_to :estudiante
  belongs_to :curso
  def nombre_estu
    self.estudiante.apellido1 + " " + self.estudiante.apellido2
  end
end
