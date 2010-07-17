class Estudiante < ActiveRecord::Base
  has_many :creditos
  has_many :cursos, :through => :creditos
  belongs_to :sexo
  
end
