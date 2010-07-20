module EstudiantesHelper
  def yearago(anno)
    Date.today.strftime("%Y").to_i - anno    
  end
end
