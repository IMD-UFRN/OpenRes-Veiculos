class VehicleReservationsController < ApplicationController
  before_action :set_vehicle_reservation, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_reservations
  # GET /vehicle_reservations.json
  def index
    @vehicle_reservations = VehicleReservation.all

    pending_reservations = VehicleReservation.where(status: "pending")
    @approved_reservations = []
    @rejected_reservations = []

    @pending_reservations = VehicleReservationDecorator.decorate_collection(pending_reservations)
  end

  # GET /vehicle_reservations/1
  # GET /vehicle_reservations/1.json
  def show
  end

  # GET /vehicle_reservations/new
  def new
    @vehicle_reservation = VehicleReservation.new
  end

  # GET /vehicle_reservations/1/edit
  def edit
  end

  # POST /vehicle_reservations
  # POST /vehicle_reservations.json
  def create
    @vehicle_reservation = VehicleReservation.new(vehicle_reservation_params)

    respond_to do |format|
      if @vehicle_reservation.save
        format.html { redirect_to @vehicle_reservation, notice: 'Car reservation was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_reservation }
      else
        format.html { render :new }
        format.json { render json: @vehicle_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_reservations/1
  # PATCH/PUT /vehicle_reservations/1.json
  def update
    respond_to do |format|
      if @vehicle_reservation.update(vehicle_reservation_params)
        format.html { redirect_to @vehicle_reservation, notice: 'Car reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_reservation }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_reservations/1
  # DELETE /vehicle_reservations/1.json
  def destroy
    @vehicle_reservation.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_reservations_url, notice: 'Car reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_reservation
      @vehicle_reservation = VehicleReservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_reservation_params
      params[:vehicle_reservation].permit(:date, :begin_time, :end_time, :vehicle_id, :reason, :passengers, :driver_id)
    end
end
