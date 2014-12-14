require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'

include Clockwork

every(1.day, 'Queueing daily activity', at: '16:00')  do
  # Delayed::Job.enqueue ControllerAction.new
  puts 'Daily cron task'
end
