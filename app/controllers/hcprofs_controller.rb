class HcprofsController < ApplicationController
  before_action :set_hcprof, only: [:show, :edit, :update, :destroy]

  # GET /hcprofs
  # GET /hcprofs.json
  def index
    @hcprofs = Hcprof.all
  end

  # GET /hcprofs/1
  # GET /hcprofs/1.json
  def show
  end

  # GET /hcprofs/new
  def new
    @hcprof = Hcprof.new
  end

  # GET /hcprofs/1/edit
  def edit
  end

  # POST /hcprofs
  # POST /hcprofs.json
  def create
    @hcprof = Hcprof.new(hcprof_params)

    respond_to do |format|
      if @hcprof.save
        format.html { redirect_to @hcprof, notice: 'Hcprof was successfully created.' }
        format.json { render :show, status: :created, location: @hcprof }
      else
        format.html { render :new }
        format.json { render json: @hcprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hcprofs/1
  # PATCH/PUT /hcprofs/1.json
  def update
    respond_to do |format|
      if @hcprof.update(hcprof_params)
        format.html { redirect_to @hcprof, notice: 'Hcprof was successfully updated.' }
        format.json { render :show, status: :ok, location: @hcprof }
      else
        format.html { render :edit }
        format.json { render json: @hcprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hcprofs/1
  # DELETE /hcprofs/1.json
  def destroy
    @hcprof.destroy
    respond_to do |format|
      format.html { redirect_to hcprofs_url, notice: 'Hcprof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hcprof
      @hcprof = Hcprof.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hcprof_params
      params.require(:hcprof).permit(:user_id, :name, :title, :phoneNumber, :email, :shiftHours, :location, :notes)
    end
end
