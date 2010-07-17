class Docente < ActiveRecord::Base
  belongs_to :sexo
  has_many :cursos
end
