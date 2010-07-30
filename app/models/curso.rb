class Curso < ActiveRecord::Base
  belongs_to :materia
  belongs_to :nivel
  has_many :creditos
  has_many :estudiantes, :through => :creditos
  has_many :notas, :through => :creditos
  belongs_to :docente
  accepts_nested_attributes_for :materia, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true  
  accepts_nested_attributes_for :creditos, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true  
  accepts_nested_attributes_for :notas, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true    
  def estud(i)
    self.estudiantes[i].nombre1 + " " + 
    self.estudiantes[i].nombre2 + " " + 
    self.estudiantes[i].apellido1 + " " + 
    self.estudiantes[i].apellido2
  end
  def evaluacion(i,j)
    self.estudiantes[i].notas[j].tipo_notas.descripcion
  end 
  def curso_caract
    ""+self.materia.titulo+ " "+self.materia.descripcion + " ("+ self.nivel.descripcion+") ["+self.horario+"]"
  end
end
