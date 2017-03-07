class PositionStatusesController < ApplicationController
  before_action :set_position_status, only: [:show, :edit, :update, :destroy]

  # GET /position_statuses
  # GET /position_statuses.json
  def index
    @position_statuses = PositionStatus.all
  end

  # GET /position_statuses/1
  # GET /position_statuses/1.json
  def show
  end

  # GET /position_statuses/new
  def new
    @position_status = PositionStatus.new
  end

  # GET /position_statuses/1/edit
  def edit
  end

  # POST /position_statuses
  # POST /position_statuses.json
  def create
    @position_status = PositionStatus.new(position_status_params)

    respond_to do |format|
      if @position_status.save
        format.html { redirect_to @position_status, notice: 'Position status was successfully created.' }
        format.json { render :show, status: :created, location: @position_status }
      else
        format.html { render :new }
        format.json { render json: @position_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_statuses/1
  # PATCH/PUT /position_statuses/1.json
  def update
    respond_to do |format|
      if @position_status.update(position_status_params)
        format.html { redirect_to @position_status, notice: 'Position status was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_status }
      else
        format.html { render :edit }
        format.json { render json: @position_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_statuses/1
  # DELETE /position_statuses/1.json
  def destroy
    @position_status.destroy
    respond_to do |format|
      format.html { redirect_to position_statuses_url, notice: 'Position status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_status
      @position_status = PositionStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_status_params
      params.require(:position_status).permit(:value)
    end
end
