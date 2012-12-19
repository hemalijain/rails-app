class ProjsController < ApplicationController
  # GET /users
  # GET /users.json
  
  layout "project"

  def index
    @projs = Proj.all
   
          respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proj }

  end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @proj = Proj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proj }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @proj = Proj.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proj}
    end
  end

  # GET /users/1/edit
  def edit
    @proj = Proj.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @proj = Proj.new(params[:proj])

    respond_to do |format|
      if @proj.save
        format.html { redirect_to @proj, notice: 'User was successfully created.' }
        format.json { render json: @proj, status: :created, location: @uproj }
      else
        format.html { render action: "new" }
        format.json { render json: @proj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @proj = Proj.find(params[:id])

    respond_to do |format|
      if @proj.update_attributes(params[:proj])
        format.html { redirect_to @proj, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @proj = Proj.find(params[:id])
    @proj.destroy

    respond_to do |format|
      format.html { redirect_to projs_url }
      format.json { head :no_content }
    end
  end

  def status
         @proj = Proj.find(params[:id])
      end

  
end
