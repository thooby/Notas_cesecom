class BusquedasController < ApplicationController
 before_filter :login_required
  def busca
  end
  def index
    if params[:q]
      query = params[:q]+"~"
      @estudiantes = Estudiante.find_with_ferret(query, :limit => :all)
    end
  end
end
