require "date"

def next_week(date, day = :monday)
  days = %w(monday tuesday wednesday thursday friday saturday sunday)
  date - date.cwday + 8 + days.index(day.to_s.downcase).to_i
end

def interval_iterator(start_date, end_date, period)
	start_date = Date.parse(start_date)
	end_date = Date.parse(end_date)

	if period == 'monthly'
		next_date = Date.new(start_date.year, start_date.month, 01).to_datetime
		while next_date < end_date do
			puts next_date.to_date
			next_date = next_date >> 1
		end
	elsif period == 'weekly'
		next_date = next_week(start_date)
		while next_date < end_date do
			puts next_date
			next_date = next_week(next_date)
		end
	end
end

interval_iterator("01-01-2016", "31-05-2016", "monthly")

interval_iterator("15-01-2016", "20-05-2016", "monthly")

interval_iterator("15-01-2016", "20-02-2016", "weekly")