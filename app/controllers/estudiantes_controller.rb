class EstudiantesController < ApplicationController
 before_filter :login_required, :except => [:index, :show, :home]
  # GET /estudiantes
  # GET /estudiantes.xml
  def home
  end
  def index
    @estudiantes = Estudiante.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estudiantes }
    end
  end

  # GET /estudiantes/1
  # GET /estudiantes/1.xml
  def show
    @estudiante = Estudiante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estudiante }
    end
  end

  # GET /estudiantes/new
  # GET /estudiantes/new.xml
  def matricula
  end
  def new
    @estudiante = Estudiante.new
    5.times do
      nota = @estudiante.notas.build
    end
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estudiante }
    end
  end

  # GET /estudiantes/1/edit
  def edit
    logger.debug "====>  #{params.inspect}" 
 
    @estudiante = Estudiante.find(params[:id])
       if params[:tipo] == "notas" then 
         render :action => "edit"
       else
             logger.debug " -------------> El otro"
             render :action => "edit2"
           end
         
  end

  # POST /estudiantes
  # POST /estudiantes.xml
  def create
    @estudiante = Estudiante.new(params[:estudiante])

    respond_to do |format|
      if @estudiante.save
        format.html { redirect_to(@estudiante, :notice => 'Estudiante was successfully created.') }
        format.xml  { render :xml => @estudiante, :status => :created, :location => @estudiante }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estudiante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estudiantes/1
  # PUT /estudiantes/1.xml
  def update
    @estudiante = Estudiante.find(params[:id])

    respond_to do |format|
      if @estudiante.update_attributes(params[:estudiante])
        format.html { redirect_to(@estudiante, :notice => 'Estudiante was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estudiante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estudiantes/1
  # DELETE /estudiantes/1.xml
  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy

    respond_to do |format|
      format.html { redirect_to(estudiantes_url) }
      format.xml  { head :ok }
    end
  end
end
