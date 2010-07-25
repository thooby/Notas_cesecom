class Curso < ActiveRecord::Base
  belongs_to :materia
  belongs_to :nivel
  has_many :creditos
  has_many :estudiantes, :through => :creditos
  belongs_to :docente
  accepts_nested_attributes_for :materia, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true  
  
  def curso_caract
    "<b>"+self.materia.titulo+ "</b> "+self.materia.descripcion + " ("+ self.nivel.descripcion+")"
  end
end
