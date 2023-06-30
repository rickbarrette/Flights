class CsvImportService
  require 'csv'

  def call(file)
    opened_file = File.open(file)

    options = { headers: true, col_sep: ',' }
    CSV.foreach(opened_file, **options) do |row|

      # map the CSV columns to your database columns
      flight_hash = {}
      flight_hash[:date] = Date.strptime(row['date'], '%m/%d/%Y')
      flight_hash[:from] = row['from']
      flight_hash[:to] = row['to']
      flight_hash[:tach] = row['tach'].to_f
      flight_hash[:hobbs] = row['hobbs'].to_f
      flight_hash[:oil] = row['oil'].to_i
      flight_hash[:fuel] = row['fuel'].to_f
      flight_hash[:note] = row['note']

      begin
        Flight.find_or_create_by!(flight_hash)
        # for performance, you could create a separate job to import each Flight
        # CsvImportJob.perform_later(flight_hash)
      rescue => e
        puts "An error of type #{e.class} happened, message is #{e.message}".red
      end
    end
  end
end
