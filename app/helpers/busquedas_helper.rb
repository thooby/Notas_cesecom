module BusquedasHelper
  def nombre_entero(s)
     s.nombre1+" "+ s.nombre2+ " "+s.apellido1+ " "+s.apellido2
  end
  def saca_notas(s)
    res=[]
    s.notas.each do |cali|    
      res <<  [cali.credito.id, cali.tipo_nota.id, cali.credito.curso.materia.titulo,	 cali.tipo_nota.descripcion, cali.calificacion.to_s, cali.credito.curso.nivel.descripcion] 
    end
    res.sort!
    salida = "<table>"
      curso_mat=""
    res.each do |lin|
      if curso_mat != lin[0] then
        salida << "<tr><td><strong>#{lin[2]}</strong> #{lin[5]}</td></tr>"
        curso_mat = lin[0]
      end
      salida << "<tr><td></td><td>#{lin[3]}</td><td> #{lin[4]}</td></tr>"
    end
    salida+"</table>"  
  end
  def saca_cursos(s)
    res=[]
    s.cursos.each do |clase|
      res << [clase.materia.descripcion, clase.nivel.descripcion]
    end
    res.sort!
    salida =""
    res.each do |lin|
      salida << "<p> #{lin[0]} #{lin[1]} </p>"
    end
    salida
  end
  
end
