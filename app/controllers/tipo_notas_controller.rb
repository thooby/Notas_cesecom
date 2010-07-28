class TipoNotasController < ApplicationController
 before_filter :login_required, :except => [:index, :show]
  # GET /tipo_notas
  # GET /tipo_notas.xml
  def index
    @tipo_notas = TipoNota.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_notas }
    end
  end

  # GET /tipo_notas/1
  # GET /tipo_notas/1.xml
  def show
    @tipo_nota = TipoNota.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_nota }
    end
  end

  # GET /tipo_notas/new
  # GET /tipo_notas/new.xml
  def new
    @tipo_nota = TipoNota.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_nota }
    end
  end

  # GET /tipo_notas/1/edit
  def edit
    @tipo_nota = TipoNota.find(params[:id])
  end

  # POST /tipo_notas
  # POST /tipo_notas.xml
  def create
    @tipo_nota = TipoNota.new(params[:tipo_nota])

    respond_to do |format|
      if @tipo_nota.save
        format.html { redirect_to(@tipo_nota, :notice => 'TipoNota was successfully created.') }
        format.xml  { render :xml => @tipo_nota, :status => :created, :location => @tipo_nota }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_nota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_notas/1
  # PUT /tipo_notas/1.xml
  def update
    @tipo_nota = TipoNota.find(params[:id])

    respond_to do |format|
      if @tipo_nota.update_attributes(params[:tipo_nota])
        format.html { redirect_to(@tipo_nota, :notice => 'TipoNota was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_nota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_notas/1
  # DELETE /tipo_notas/1.xml
  def destroy
    @tipo_nota = TipoNota.find(params[:id])
    @tipo_nota.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_notas_url) }
      format.xml  { head :ok }
    end
  end
end
