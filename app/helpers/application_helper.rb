module ApplicationHelper
  def format_as_localtime(datetime, format = '')
    format = "%d/%b/%Y, %H:%M:%S" unless format.present?
    datetime.localtime.strftime format
  end
end
