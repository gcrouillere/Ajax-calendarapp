module AppointmentsHelper
  def appointments_errors(instance, attribute)
    content_tag(:span, instance.errors.messages[attribute][0]) if instance.errors.messages[attribute].present?
  end
end
