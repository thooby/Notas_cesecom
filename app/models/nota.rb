class Nota < ActiveRecord::Base
  belongs_to :credito
   belongs_to :tipo_nota
end
