class VehicleReservation < ActiveRecord::Base

  belongs_to :vehicle

  before_create do |obj|

    if obj.begin_time > obj.end_time
      obj.errors.add(:horário, "de fim especificado não pode ser anterior que o horário de início")
      return false
    end

    obj.status = 'pending'

  end

  scope :conflicting, lambda { |reservation|
    reservations = VehicleReservation.where("vehicle_id = ? and date = ? and id <> ? and status <> ? and status <> ?", reservation.vehicle_id, reservation.date, reservation.id, "rejected", "canceled")

    return reservations
      .reject { |r| r.reservation_group && !r.reservation_group.confirmed_at}
      .select { |r| r.time_interval.overlaps? reservation.time_interval }
  }

  def has_conflicts?
    return !VehicleReservation.conflicting(self).empty?
  end

end
