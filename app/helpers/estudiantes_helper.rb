module EstudiantesHelper
  def yearago(anno)
    Date.today.strftime("%Y").to_i - anno    
  end
  def add_estudiante_link(name)
      link_to_function name do |page|
        page.insert_html :bottom, :estudiantes, :partial => 'estudiante', :object => Estudiante.new
      end
    end
end
