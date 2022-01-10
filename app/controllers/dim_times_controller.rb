class DimTimesController < ApplicationController
  before_action :set_dim_time, only: %i[ show edit update destroy ]

  # GET /dim_times or /dim_times.json
  def index
    @dim_times = DimTime.all
  end

  # GET /dim_times/1 or /dim_times/1.json
  def show
  end

  # GET /dim_times/new
  def new
    @dim_time = DimTime.new
  end

  # GET /dim_times/1/edit
  def edit
  end

  # POST /dim_times or /dim_times.json
  def create
    @dim_time = DimTime.new(dim_time_params)

    respond_to do |format|
      if @dim_time.save
        format.html { redirect_to @dim_time, notice: "Dim time was successfully created." }
        format.json { render :show, status: :created, location: @dim_time }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dim_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dim_times/1 or /dim_times/1.json
  def update
    respond_to do |format|
      if @dim_time.update(dim_time_params)
        format.html { redirect_to @dim_time, notice: "Dim time was successfully updated." }
        format.json { render :show, status: :ok, location: @dim_time }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dim_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dim_times/1 or /dim_times/1.json
  def destroy
    @dim_time.destroy
    respond_to do |format|
      format.html { redirect_to dim_times_url, notice: "Dim time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dim_time
      @dim_time = DimTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dim_time_params
      params.fetch(:dim_time, {})
    end
end
