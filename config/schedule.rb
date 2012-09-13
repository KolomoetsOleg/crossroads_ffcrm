# Use this file to easily define all of your cron jobs.

# Set up email notifications for errors. Airbrake can only send us errors once the environment has initialized.
env :MAILTO, 'itdept@crossroads.org.hk'

# Turns (3) into "3,13,23,33,43,53"
# If the environment is production, add two minutes to the start time
# so that staging can process the emails/submissions first without deleting them
def start_min_to_cron(start, interval = 10)
  start += 2 if environment == 'production'
  ((start)..(start + 60)).step(interval).to_a.reject{|i| i > 59 }.join(',')
end

job_type :rake, "cd :path && RAILS_ENV=:environment bundle exec rake :task --silent :output"


every "#{start_min_to_cron(5)} 7-23 * * *" do
  # Formstack submissions
  if environment == 'production'
    rake "ffcrm:crossroads:formstack:pull", :output => {:standard => "log/formstack_cron.log"}
  else
    rake "ffcrm:crossroads:formstack:pull:dry", :output => {:standard => "log/formstack_cron.log"}
  end
end

every "#{start_min_to_cron(3)} 7-23 * * *" do
  # Email dropbox
  if environment == 'production'
    rake "ffcrm:dropbox:run", :output => {:standard => "log/dropbox_cron.log"}
  else
    rake "ffcrm:dropbox:run:dry", :output => {:standard => "log/dropbox_cron.log"}
  end
end

every "#{start_min_to_cron(0, 4)} * * * *" do
  # Comments Replies Inbox
  if environment == 'production'
    rake "ffcrm:comment_replies:run", :output => {:standard => "log/comment_replies_cron.log"}
  else
    rake "ffcrm:comment_replies:run:dry", :output => {:standard => "log/comment_replies_cron.log"}
  end
end


every "*/20 * * * *" do
  # Refresh cached volunteering statistics from Clockit
  rake "ffcrm:crossroads:update_clockit_cache",
       :output => {:standard => "log/clockit_cache_cron.log"}
end
