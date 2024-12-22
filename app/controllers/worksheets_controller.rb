class WorksheetsController < ApplicationController
  before_action :set_worksheet, only: %i[ show edit update destroy ]

  # GET /worksheets or /worksheets.json
  def index
    @worksheets = Worksheet.all
  end

  # GET /worksheets/1 or /worksheets/1.json
  def show
  end

  # GET /worksheets/new
  def new
    @worksheet = Worksheet.new
  end

  # GET /worksheets/1/edit
  def edit
  end

  # POST /worksheets or /worksheets.json
  def create
    @worksheet = Worksheet.new(worksheet_params)

    respond_to do |format|
      if @worksheet.save
        format.html { redirect_to @worksheet, notice: "Worksheet was successfully created." }
        format.json { render :show, status: :created, location: @worksheet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @worksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worksheets/1 or /worksheets/1.json
  def update
    respond_to do |format|
      if @worksheet.update(worksheet_params)
        format.html { redirect_to @worksheet, notice: "Worksheet was successfully updated." }
        format.json { render :show, status: :ok, location: @worksheet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @worksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worksheets/1 or /worksheets/1.json
  def destroy
    @worksheet.destroy!

    respond_to do |format|
      format.html { redirect_to worksheets_path, status: :see_other, notice: "Worksheet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worksheet
      @worksheet = Worksheet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def worksheet_params
      params.require(:worksheet).permit(:mro_rank, :mro_name, :mro_billet, :mro_unit, :mro_component, :mro_status, :reporting_occasion, :mmsb_due_date, :from_date, :to_date, :rs_rank, :rs_name, :rs_billet, :ro_rank, :ro_name, :ro_billet, :commendatory, :commendatory_description, :recommended_comments, :amplifying_information, :recommended_comparative_assessment)
    end
end
