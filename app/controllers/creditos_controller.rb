class CreditosController < ApplicationController
  # GET /creditos
  # GET /creditos.xml
  def index
    @search = Credito.searchlogic(params[:search])
    @creditos = @search.all.paginate :page => params[:page], :per_page => 5
    puts "kkkkkkkkkkkk"
    @creditos.each  do |c|
      puts c.id
    end
    puts "xxxxxxxxxxxx"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @creditos }
    end
  end

  # GET /creditos/1
  # GET /creditos/1.xml
  def show
    @credito = Credito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @credito }
    end
  end

  # GET /creditos/new
  # GET /creditos/new.xml
  def new
    @credito = Credito.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @credito }
    end
  end

  # GET /creditos/1/edit
  def edit
    @credito = Credito.find(params[:id])
  end

  # POST /creditos
  # POST /creditos.xml
  def create
    @credito = Credito.new(params[:credito])

    respond_to do |format|
      if @credito.save
        format.html { redirect_to(@credito, :notice => 'Credito was successfully created.') }
        format.xml  { render :xml => @credito, :status => :created, :location => @credito }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @credito.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /creditos/1
  # PUT /creditos/1.xml
  def update
    @credito = Credito.find(params[:id])

    respond_to do |format|
      if @credito.update_attributes(params[:credito])
        format.html { redirect_to(@credito, :notice => 'Credito was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @credito.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /creditos/1
  # DELETE /creditos/1.xml
  def destroy
    @credito = Credito.find(params[:id])
    @credito.destroy

    respond_to do |format|
      format.html { redirect_to(creditos_url) }
      format.xml  { head :ok }
    end
  end
end
