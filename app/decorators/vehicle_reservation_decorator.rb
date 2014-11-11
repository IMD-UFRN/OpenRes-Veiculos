class VehicleReservationDecorator < Draper::Decorator
  delegate_all

  include Draper::LazyHelpers


  def details_link
    link_to icon("file-text-o") + " Detalhes", object, class: "btn btn-normal btn-sm"
  end

  def approve_link
    link_to icon("check-square-o") + " Aprovar", object, class: "btn btn-normal btn-sm"
  end

  def suspend_link
    link_to icon("exclamation-circle") + " Suspender", object, class: "btn btn-normal btn-sm"
  end

  def reject_link
    link_to icon("ban") + " Rejeitar", object, class: "btn btn-normal btn-sm"
  end

  def date
    object.date.strftime("%d/%m/%Y")
  end

  def begin_time
    object.begin_time.strftime("%H:%M")
  end

  def end_time
    object.end_time.strftime("%H:%M")
  end

  def vehicle
    link_to object.vehicle.full_name, object.vehicle
  end

  def has_conflicts?
    object.has_conflicts? ? "Sim" : "Não"
  end

  def responsible
    "ME IMPLEMENTE"
  end

  def conflict_class
    "conflicted_reservation" if  object.has_conflicts? and not object.status.in? %w(canceled rejected)
  end



end
