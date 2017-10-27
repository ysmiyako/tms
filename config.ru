# This file is used by Rack-based servers to start the application.
if ENV['RAILS_ENV'] == 'production'
    require 'unicorn/worker_killer'
    use Unicorn::WorkerKiller::MaxRequests, 3072, 4096
    use Unicorn::WorkerKiller::Oom, (512*(1024**2)), (1024*(1024**2)), 16
end
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
