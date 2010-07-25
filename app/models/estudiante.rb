class Estudiante < ActiveRecord::Base
  has_many :creditos
  has_many :notas, :through => :creditos
  has_many :cursos, :through => :creditos
  belongs_to :sexo
  accepts_nested_attributes_for :notas, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true  
  def nombre_completo
    self.nombre1 + " "+ self.nombre2+" "+self.apellido1+" "+self.apellido2
  end
  acts_as_ferret :fields => [ :nombre1, :nombre2, :apellido1, :apellido2 ], :remote => true
  
end
