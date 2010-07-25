class Curso < ActiveRecord::Base
  belongs_to :materia
  belongs_to :nivel
  has_many :creditos
  has_many :estudiantes, :through => :creditos
  belongs_to :docente
  def curso_caract
    "<b>"+self.materia.titulo+ "</b> "+self.materia.descripcion + " ("+ self.nivel.descripcion+")"
  end
end
