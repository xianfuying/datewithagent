module EventsHelper
  def pretty_date_format(date, format="%d/%b/%Y")
    date.to_time > 1.week.ago ? distance_of_time_in_words(Time.now, date) + " ago" : date.strftime(format)
  end
end
