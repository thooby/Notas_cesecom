class DocentesController < ApplicationController
  # GET /docentes
  # GET /docentes.xml
  def index
    @docentes = Docente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @docentes }
    end
  end

  # GET /docentes/1
  # GET /docentes/1.xml
  def show
    @docente = Docente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @docente }
    end
  end

  # GET /docentes/new
  # GET /docentes/new.xml
  def new
    @docente = Docente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @docente }
    end
  end

  # GET /docentes/1/edit
  def edit
    @docente = Docente.find(params[:id])
  end

  # POST /docentes
  # POST /docentes.xml
  def create
    @docente = Docente.new(params[:docente])
    respond_to do |format|
      if @docente.save
        format.html { redirect_to(@docente, :notice => 'Docente was successfully created.') }
        format.xml  { render :xml => @docente, :status => :created, :location => @docente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @docente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /docentes/1
  # PUT /docentes/1.xml
  def update
    @docente = Docente.find(params[:id])

    respond_to do |format|
      if @docente.update_attributes(params[:docente])
        format.html { redirect_to(@docente, :notice => 'Docente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @docente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /docentes/1
  # DELETE /docentes/1.xml
  def destroy
    @docente = Docente.find(params[:id])
    @docente.destroy

    respond_to do |format|
      format.html { redirect_to(docentes_url) }
      format.xml  { head :ok }
    end
  end
end
