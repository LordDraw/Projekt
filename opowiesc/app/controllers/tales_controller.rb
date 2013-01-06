class TalesController < ApplicationController
  # GET /tales
  # GET /tales.json
  
  def index
       param1 = params[:id] 
    if params[:tag]
    @tales = Tale.tagged_with(params[:tag])
  else
    @tales = Tale.all
  end
  
    unless @current_user.nil?
    session[:user_id] = @current_user.id
   
  end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tales }
    end
  end
  
  # GET /tales/1
  # GET /tales/1.json
  def show
    @tale = Tale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tale }
    end
  end

  # GET /tales/new
  # GET /tales/new.json
  def new
    @tale = Tale.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tale }
    end
  end

  # GET /tales/1/edit
  def edit
    @tale = Tale.find(params[:id])
  end

  # POST /tales
  # POST /tales.json
  def create
    @tale = Tale.new(params[:tale])

    respond_to do |format|
      if @tale.save
        format.html { redirect_to @tale, notice: 'Tale was successfully created.' }
        format.json { render json: @tale, status: :created, location: @tale }
      else
        format.html { render action: "new" }
        format.json { render json: @tale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tales/1
  # PUT /tales/1.json
  def update
    @tale = Tale.find(params[:id])

    respond_to do |format|
      if @tale.update_attributes(params[:tale])
        format.html { redirect_to @tale, notice: 'Tale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tales/1
  # DELETE /tales/1.json
  def destroy
    @tale = Tale.find(params[:id])
    @tale.destroy

    respond_to do |format|
      format.html { redirect_to tales_url }
      format.json { head :no_content }
    end
  end
end
