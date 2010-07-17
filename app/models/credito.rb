class Credito < ActiveRecord::Base
  has_many :notas
  belongs_to :estudiante
  belongs_to :curso
end
