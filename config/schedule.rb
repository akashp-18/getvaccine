every 1.minute do
  rake 'vaccine_call'
end

# Begin Whenever generated tasks for: /Users/akashprajapati/project/rails/getvaccine/config/schedule.rb at: 2021-05-15 16:34:49 +0530
# * * * * * /bin/bash -l -c 'for i in {1..12}; do cd /Users/akashprajapati/project/rails/getvaccine && RAILS_ENV=development bundle exec rake vaccine_call --silent; sleep 5 ; done '

# End Whenever generated tasks for: /Users/akashprajapati/project/rails/getvaccine/config/schedule.rb at: 2021-05-15 16:34:49 +0530