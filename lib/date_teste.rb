require 'csv'
require 'erb'
require 'time'
require 'date'

def open_csv
  CSV.open(
    '../event_attendees.csv',
    headers: true,
    header_converters: :symbol
  )
end

def sort_date(reg_date)
  puts reg_date
end


contents = open_csv
  reg_day_array = []
  contents.each do |row|
    reg_date = row[:regdate]
    reg_day = Time.strptime(reg_date, '%M/%d/%y %k:%M').strftime('%A')
    reg_day_array << reg_day
  end


