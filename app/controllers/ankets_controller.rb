class AnketsController < ApplicationController
  # GET /ankets
  # GET /ankets.json
  def index
    @ankets = Anket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ankets }
    end
  end

  # GET /ankets/1
  # GET /ankets/1.json
  def show
    @anket = Anket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anket }
    end
  end

  # GET /ankets/new
  # GET /ankets/new.json
  def new
    @anket = Anket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anket }
    end
  end

  # GET /ankets/1/edit
  def edit
    @anket = Anket.find(params[:id])
  end

  # POST /ankets
  # POST /ankets.json
  def create
    @anket = Anket.new(params[:anket])

    respond_to do |format|
      if @anket.save
        format.html { redirect_to @anket, notice: 'Anket was successfully created.' }
        format.json { render json: @anket, status: :created, location: @anket }
      else
        format.html { render action: "new" }
        format.json { render json: @anket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ankets/1
  # PUT /ankets/1.json
  def update
    @anket = Anket.find(params[:id])

    respond_to do |format|
      if @anket.update_attributes(params[:anket])
        format.html { redirect_to @anket, notice: 'Anket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ankets/1
  # DELETE /ankets/1.json
  def destroy
    @anket = Anket.find(params[:id])
    @anket.destroy

    respond_to do |format|
      format.html { redirect_to ankets_url }
      format.json { head :no_content }
    end
  end
end
