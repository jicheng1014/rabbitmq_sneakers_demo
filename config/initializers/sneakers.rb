require 'sneakers'

Sneakers.configure(
# AMQP
  :heartbeat => 2,
  :amqp => 'amqp://guest:guest@localhost:5672',
  :vhost => '/',
# Daemon
  :daemonize => true,
  :start_worker_delay => 0.2,
  :workers => 2,               # Number of per-cpu processes to run
  :log  => 'sneakers.log',     # Log file
  :pid_path => 'sneakers.pid', # Pid file

# Workers
  :timeout_job_after => 5,      # Maximal seconds to wait for job
#  :prefetch => 10,              # Grab 10 jobs together. Better speed.
#  :threads => 10,               # Threadpool size (good to match prefetch)
  :env => ENV['RACK_ENV'],      # Environment
  :durable => true,             # Is queue durable?
  :ack => true,                 # Must we acknowledge?
#  :exchange => 'sneakers',      # AMQP exchange
  :start_worker_delay => 10     # Delay between thread startup
)
