class PastLogsController < ApplicationController
  before_action :set_past_log, only: [:show, :edit, :update, :destroy]

  # GET /past_logs
  # GET /past_logs.json
  def index
    @past_logs = PastLog.all
  end

  # GET /past_logs/1
  # GET /past_logs/1.json
  def show
  end

  # GET /past_logs/new
  def new
    @past_log = PastLog.new
  end

  # GET /past_logs/1/edit
  def edit
  end

  # POST /past_logs
  # POST /past_logs.json
  def create
    @past_log = PastLog.new(past_log_params)

    respond_to do |format|
      if @past_log.save
        format.html { redirect_to @past_log, notice: 'Past log was successfully created.' }
        format.json { render :show, status: :created, location: @past_log }
      else
        format.html { render :new }
        format.json { render json: @past_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /past_logs/1
  # PATCH/PUT /past_logs/1.json
  def update
    respond_to do |format|
      if @past_log.update(past_log_params)
        format.html { redirect_to @past_log, notice: 'Past log was successfully updated.' }
        format.json { render :show, status: :ok, location: @past_log }
      else
        format.html { render :edit }
        format.json { render json: @past_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /past_logs/1
  # DELETE /past_logs/1.json
  def destroy
    @past_log.destroy
    respond_to do |format|
      format.html { redirect_to past_logs_url, notice: 'Past log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_past_log
      @past_log = PastLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def past_log_params
      params.require(:past_log).permit(:Workout, :Date)
    end
end
