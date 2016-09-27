class PersonalFlightsController < ApplicationController
  before_action :set_personal_flight, only: [:show, :edit, :update, :destroy]

  # GET /personal_flights
  # GET /personal_flights.json
  def index
    @personal_flights = PersonalFlight.all
  end

  # GET /personal_flights/1
  # GET /personal_flights/1.json
  def show
  end

  # GET /personal_flights/new
  def new
    @personal_flight = PersonalFlight.new
  end

  # GET /personal_flights/1/edit
  def edit
  end

  # POST /personal_flights
  # POST /personal_flights.json
  def create
    @personal_flight = PersonalFlight.new(personal_flight_params)

    respond_to do |format|
      if @personal_flight.save
        format.html { redirect_to @personal_flight, notice: 'Personal flight was successfully created.' }
        format.json { render :show, status: :created, location: @personal_flight }
      else
        format.html { render :new }
        format.json { render json: @personal_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_flights/1
  # PATCH/PUT /personal_flights/1.json
  def update
    respond_to do |format|
      if @personal_flight.update(personal_flight_params)
        format.html { redirect_to @personal_flight, notice: 'Personal flight was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_flight }
      else
        format.html { render :edit }
        format.json { render json: @personal_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_flights/1
  # DELETE /personal_flights/1.json
  def destroy
    @personal_flight.destroy
    respond_to do |format|
      format.html { redirect_to personal_flights_url, notice: 'Personal flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_flight
      @personal_flight = PersonalFlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_flight_params
      params.require(:personal_flight).permit(:personal_id, :flight_id)
    end
end
