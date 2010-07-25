class Docente < ActiveRecord::Base
  belongs_to :sexo
  has_many :cursos
  def nombre_completo
    self.nombre1 + " "+ self.nombre2+" "+self.apellido1+" "+self.apellido2
  end
end
