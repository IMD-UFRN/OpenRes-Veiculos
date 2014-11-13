class VehicleReservationApprovalController < ApplicationController

  def approve
    reservation = VehicleReservation.find(params[:id])

    conflicts = VehicleReservationPolicy.approve(reservation)

    if (conflicts.empty?)
      flash[:notice] = "Reserva aprovada com sucesso."
    else
      flash[:error] = "Esta reserva possui conflitos e não pode ser aprovada até que estejam resolvidos."
    end

    redirect_to vehicle_reservations_path(filter_by: "future")
  end

end
