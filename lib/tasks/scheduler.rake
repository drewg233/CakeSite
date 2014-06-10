desc "This task is called by the Heroku scheduler add-on"

task :get_photos => :environment do
  Job.get_mobile
end