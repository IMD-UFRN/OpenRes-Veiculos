class CarReservationsController < ApplicationController
  before_action :set_car_reservation, only: [:show, :edit, :update, :destroy]

  # GET /car_reservations
  # GET /car_reservations.json
  def index
    @car_reservations = CarReservation.all
  end

  # GET /car_reservations/1
  # GET /car_reservations/1.json
  def show
  end

  # GET /car_reservations/new
  def new
    @car_reservation = CarReservation.new
  end

  # GET /car_reservations/1/edit
  def edit
  end

  # POST /car_reservations
  # POST /car_reservations.json
  def create
    @car_reservation = CarReservation.new(car_reservation_params)

    respond_to do |format|
      if @car_reservation.save
        format.html { redirect_to @car_reservation, notice: 'Car reservation was successfully created.' }
        format.json { render :show, status: :created, location: @car_reservation }
      else
        format.html { render :new }
        format.json { render json: @car_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_reservations/1
  # PATCH/PUT /car_reservations/1.json
  def update
    respond_to do |format|
      if @car_reservation.update(car_reservation_params)
        format.html { redirect_to @car_reservation, notice: 'Car reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_reservation }
      else
        format.html { render :edit }
        format.json { render json: @car_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_reservations/1
  # DELETE /car_reservations/1.json
  def destroy
    @car_reservation.destroy
    respond_to do |format|
      format.html { redirect_to car_reservations_url, notice: 'Car reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_reservation
      @car_reservation = CarReservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_reservation_params
      params[:car_reservation]
    end
end
