class SpeechesController < ApplicationController
  before_action :set_speech, only: %i[ show edit update destroy ]

  # GET /speeches or /speeches.json
  def index
    @speeches = Speech.all
  end

  # GET /speeches/1 or /speeches/1.json
  def show
  end

  # GET /speeches/new
  def new
    @speech = Speech.new
  end

  # GET /speeches/1/edit
  def edit
  end

  # POST /speeches or /speeches.json
  def create
    @speech = Speech.new(speech_params)

    respond_to do |format|
      if @speech.save
        format.html { redirect_to @speech, notice: "Speech was successfully created." }
        format.json { render :show, status: :created, location: @speech }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speeches/1 or /speeches/1.json
  def update
    respond_to do |format|
      if @speech.update(speech_params)
        format.html { redirect_to @speech, notice: "Speech was successfully updated." }
        format.json { render :show, status: :ok, location: @speech }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speeches/1 or /speeches/1.json
  def destroy
    @speech.destroy
    respond_to do |format|
      format.html { redirect_to speeches_url, notice: "Speech was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speech
      @speech = Speech.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def speech_params
      params.require(:speech).permit(:attachment, :result)
    end
end
