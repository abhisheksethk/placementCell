class PastrecordsController < ApplicationController
  before_action :set_pastrecord, only: [:show, :edit, :update, :destroy]

  # GET /pastrecords
  # GET /pastrecords.json
  def index
    @pastrecords = Pastrecord.all
  end

  # GET /pastrecords/1
  # GET /pastrecords/1.json
  def show
  end

  # GET /pastrecords/new
  def new
    @pastrecord = Pastrecord.new
  end

  # GET /pastrecords/1/edit
  def edit
  end

  # POST /pastrecords
  # POST /pastrecords.json
  def create
    @pastrecord = Pastrecord.new(pastrecord_params)

    respond_to do |format|
      if @pastrecord.save
        format.html { redirect_to @pastrecord, notice: 'Pastrecord was successfully created.' }
        format.json { render :show, status: :created, location: @pastrecord }
      else
        format.html { render :new }
        format.json { render json: @pastrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pastrecords/1
  # PATCH/PUT /pastrecords/1.json
  def update
    respond_to do |format|
      if @pastrecord.update(pastrecord_params)
        format.html { redirect_to @pastrecord, notice: 'Pastrecord was successfully updated.' }
        format.json { render :show, status: :ok, location: @pastrecord }
      else
        format.html { render :edit }
        format.json { render json: @pastrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pastrecords/1
  # DELETE /pastrecords/1.json
  def destroy
    @pastrecord.destroy
    respond_to do |format|
      format.html { redirect_to pastrecords_url, notice: 'Pastrecord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pastrecord
      @pastrecord = Pastrecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pastrecord_params
      params.require(:pastrecord).permit(:name, :registration, :stream, :year, :package)
    end
end
