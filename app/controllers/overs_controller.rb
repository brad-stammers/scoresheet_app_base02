class OversController < ApplicationController
  before_action :set_over, only: [:show, :edit, :update, :destroy]

  # GET /overs
  # GET /overs.json
  def index
    @overs = Over.all
  end

  # GET /overs/1
  # GET /overs/1.json
  def show
  end

  # GET /overs/new
  def new
    @over = Over.new
  end

  # GET /overs/1/edit
  def edit
  end

  # POST /overs
  # POST /overs.json
  def create
    @over = Over.new(over_params)

    respond_to do |format|
      if @over.save
        format.html { redirect_to @over, notice: 'Over was successfully created.' }
        format.json { render :show, status: :created, location: @over }
      else
        format.html { render :new }
        format.json { render json: @over.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /overs/1
  # PATCH/PUT /overs/1.json
  def update
    respond_to do |format|
      if @over.update(over_params)
        format.html { redirect_to @over, notice: 'Over was successfully updated.' }
        format.json { render :show, status: :ok, location: @over }
      else
        format.html { render :edit }
        format.json { render json: @over.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /overs/1
  # DELETE /overs/1.json
  def destroy
    @over.destroy
    respond_to do |format|
      format.html { redirect_to overs_url, notice: 'Over was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_over
      @over = Over.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def over_params
      params.require(:over).permit(:over_no, :bowler_id, :runs, :wides, :no_balls, :byes, :leg_byes, :inning_id)
    end
end
