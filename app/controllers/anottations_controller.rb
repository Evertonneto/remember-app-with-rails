class AnottationsController < ApplicationController
  before_action :set_anottation, only: %i[ show edit update destroy ]

  # GET /anottations or /anottations.json
  def index
    @anottations = Anottation.page(params[:page])
  end

  # GET /anottations/1 or /anottations/1.json
  def show
  end

  # GET /anottations/new
  def new
    @anottation = Anottation.new
  end

  # GET /anottations/1/edit
  def edit
  end

  # POST /anottations or /anottations.json
  def create
    @anottation = Anottation.new(anottation_params)

    respond_to do |format|
      if @anottation.save
        format.html { redirect_to anottation_url(@anottation), notice: "Anottation was successfully created." }
        format.json { render :show, status: :created, location: @anottation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anottation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anottations/1 or /anottations/1.json
  def update
    respond_to do |format|
      if @anottation.update(anottation_params)
        format.html { redirect_to anottation_url(@anottation), notice: "Anottation was successfully updated." }
        format.json { render :show, status: :ok, location: @anottation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anottation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anottations/1 or /anottations/1.json
  def destroy
    @anottation.destroy!

    respond_to do |format|
      format.html { redirect_to anottations_url, notice: "Anottation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anottation
      @anottation = Anottation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anottation_params
      params.require(:anottation).permit(:body)
    end
end
