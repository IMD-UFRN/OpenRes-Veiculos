# -*- encoding : utf-8 -*-
class VehicleReservationPolicy

  def self.approve(reservation, opts={})

    conflicts = VehicleReservation.approved.conflicting(reservation)

    if conflicts.empty?
      reservation.status = "approved"

      reservation.save
    end

    return conflicts
  end

  def self.suspend(current_user, reservation, justification, opts={})

    return unless reservation.can_be_decided_over? current_user

    reservation.status = "pending"

    ActiveRecord::Base.transaction do
      justification.save
      reservation.save
    end
    unless opts[:silent]
      ReservationApprovalMailer.suspended_mail(reservation, justification).deliver
      NotifyUserMailer.send_reservation_to_class_monitor(reservation)
    end
  end

  def self.reject(current_user, reservation, justification, opts={})
    reservation.status = "rejected"

    ActiveRecord::Base.transaction do
      justification.save
      reservation.save
    end
    unless opts[:silent]
      ReservationApprovalMailer.rejected_mail(reservation, justification).deliver
      NotifyUserMailer.send_reservation_to_class_monitor(reservation)
    end
  end

end
