class CalendarTrackingsController < ApplicationController
  before_action :set_calendar_tracking, only: %i[ show edit update destroy ]

  # GET /calendar_trackings or /calendar_trackings.json
  def index
    @calendar_trackings = CalendarTracking.all
  end

  # GET /calendar_trackings/1 or /calendar_trackings/1.json
  def show
  end

  # GET /calendar_trackings/new
  def new
    @calendar_tracking = CalendarTracking.new
  end

  # GET /calendar_trackings/1/edit
  def edit
  end

  # POST /calendar_trackings or /calendar_trackings.json
  def create
    @calendar_tracking = CalendarTracking.new(calendar_tracking_params)

    respond_to do |format|
      if @calendar_tracking.save
        format.html { redirect_to calendar_tracking_url(@calendar_tracking), notice: "Calendar tracking was successfully created." }
        format.json { render :show, status: :created, location: @calendar_tracking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calendar_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_trackings/1 or /calendar_trackings/1.json
  def update
    respond_to do |format|
      if @calendar_tracking.update(calendar_tracking_params)
        format.html { redirect_to calendar_tracking_url(@calendar_tracking), notice: "Calendar tracking was successfully updated." }
        format.json { render :show, status: :ok, location: @calendar_tracking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calendar_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_trackings/1 or /calendar_trackings/1.json
  def destroy
    @calendar_tracking.destroy

    respond_to do |format|
      format.html { redirect_to calendar_trackings_url, notice: "Calendar tracking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_tracking
      @calendar_tracking = CalendarTracking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calendar_tracking_params
      params.require(:calendar_tracking).permit(:day, :hour, :comments, :action, :calendar_id, :type_customer, :type_scheduled, :agent_id, :observation, :stated_at)
    end
end
