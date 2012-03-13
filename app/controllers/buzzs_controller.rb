class BuzzsController < ApplicationController
  # GET /buzzs
  # GET /buzzs.json
  def index
    @buzzs = Buzz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @buzzs }
    end
  end

  # GET /buzzs/1
  # GET /buzzs/1.json
  def show
    @buzz = Buzz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @buzz }
    end
  end

  # GET /buzzs/new
  # GET /buzzs/new.json
  def new
    @buzz = Buzz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @buzz }
    end
  end

  # GET /buzzs/1/edit
  def edit
    @buzz = Buzz.find(params[:id])
  end

  # POST /buzzs
  # POST /buzzs.json
  def create
    @buzz = Buzz.new(params[:buzz])

    respond_to do |format|
      if @buzz.save
        format.html { redirect_to @buzz, notice: 'Buzz was successfully created.' }
        format.json { render json: @buzz, status: :created, location: @buzz }
      else
        format.html { render action: "new" }
        format.json { render json: @buzz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /buzzs/1
  # PUT /buzzs/1.json
  def update
    @buzz = Buzz.find(params[:id])

    respond_to do |format|
      if @buzz.update_attributes(params[:buzz])
        format.html { redirect_to @buzz, notice: 'Buzz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @buzz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buzzs/1
  # DELETE /buzzs/1.json
  def destroy
    @buzz = Buzz.find(params[:id])
    @buzz.destroy

    respond_to do |format|
      format.html { redirect_to buzzs_url }
      format.json { head :no_content }
    end
  end
end
