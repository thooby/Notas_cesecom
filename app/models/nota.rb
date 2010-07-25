class Nota < ActiveRecord::Base
  belongs_to :credito
  belongs_to :tipo_nota
  accepts_nested_attributes_for :tipo_nota, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true  
  accepts_nested_attributes_for :credito, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true  
end
