require 'json'

desc 'Whenever rake task vaccine Availability'
task vaccine_call: :environment do
  Rake::Task["log:clear"].invoke
  district_id = 664 #Kanpur
  date = Date.today.strftime("%d-%m-%Y") #todays date
  resp = Faraday.get(
      "https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByDistrict?district_id=#{district_id}&date=#{date}",
    )
  all_data = JSON.parse(resp.body).values.first
  found = []
  Rails.logger.info Time.now
  all_data.each do |record|
    found << record.slice("name", "address", "available_capacity", "vaccine", "slots") if record["min_age_limit"] < 45
  end
  Rails.logger.info JSON.pretty_generate(found)
  Rails.logger.info '--------------------------------------------------'
end