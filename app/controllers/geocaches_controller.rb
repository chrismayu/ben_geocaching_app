class GeocachesController < ApplicationController
  # GET /geocaches
  # GET /geocaches.json
  def index
    @geocaches = Geocach.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @geocaches }
    end
  end

  # GET /geocaches/1
  # GET /geocaches/1.json
  def show
    @geocach = Geocach.find(params[:id])
     qr_code = "#{ENV['URL']}#{@geocach.random_code}"
    @qr = RQRCode::QRCode.new( qr_code.to_s , :size => 10, :level => :h )
    @qr_code = "#{ENV['URL']}#{@geocach.random_code}"
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @geocach }
    end
  end

  # GET /geocaches/new
  # GET /geocaches/new.json
  def new
    @geocach = Geocach.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @geocach }
    end
  end

  # GET /geocaches/1/edit
  def edit
    @geocach = Geocach.find(params[:id])
  end

  # POST /geocaches
  # POST /geocaches.json
  def create
    @geocach = Geocach.new(params[:geocach])

    respond_to do |format|
      if @geocach.save
        format.html { redirect_to @geocach, notice: 'A Geocache was successfully created.' }
        format.json { render json: @geocach, status: :created, location: @geocach }
      else
        format.html { render action: "new" }
        format.json { render json: @geocach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /geocaches/1
  # PUT /geocaches/1.json
  def update
    @geocach = Geocach.find(params[:id])

    respond_to do |format|
      if @geocach.update_attributes(params[:geocach])
        format.html { redirect_to @geocach, notice: 'This Geocache was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @geocach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geocaches/1
  # DELETE /geocaches/1.json
  def destroy
    @geocach = Geocach.find(params[:id])
    @geocach.destroy

    respond_to do |format|
      format.html { redirect_to geocaches_url }
      format.json { head :no_content }
    end
  end
end
