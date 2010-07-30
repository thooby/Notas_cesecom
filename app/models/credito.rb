class Credito < ActiveRecord::Base
  has_many :notas
  belongs_to :estudiante
  belongs_to :curso
  accepts_nested_attributes_for :curso, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true  
  accepts_nested_attributes_for :notas, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true  
  named_scope :ascend_by_nombre_completo, :joins => "INNER JOIN estudiantes ON estudiantes.id = creditos.estudiante_id", :order => "apellido1 ASC, apellido2 ASC, nombre1 ASC, nombre2 ASC"
  named_scope :descend_by_nombre_completo, :joins => "INNER JOIN estudiantes ON estudiantes.id = creditos.estudiante_id", :order =>  "apellido1 DESC, apellido2 DESC, nombre1 DESC, nombre2 DESC"
  named_scope :ascend_by_curso_caract, :joins => "INNER JOIN cursos ON cursos.id = creditos.curso_id INNER JOIN materias ON materias.id = cursos.materia_id", :order => "titulo ASC, nivel_id ASC"
  named_scope :descend_by_curso_caract, :joins => "INNER JOIN cursos ON cursos.id = creditos.curso_id INNER JOIN materias ON materias.id = cursos.materia_id", :order => "titulo DESC, nivel_id DESC"
  def nombre_completo
    self.estudiante.nombre1 + " "+ self.estudiante.nombre2+" "+self.estudiante.apellido1+" "+self.estudiante.apellido2
  end
  def curso_caract
    "<b>"+self.curso.materia.titulo+ "</b> "+self.curso.materia.descripcion + " ("+ self.curso.nivel.descripcion+")"
  end
  def nombre_estu
    self.estudiante.apellido1 + " " + self.estudiante.apellido2
  end
end
