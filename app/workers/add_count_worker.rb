class AddCountWorker
  include Sneakers::Worker
  from_queue 'add_count_worker'

  def work(msg)
    Sneakers.logger.info "msg from queue add_count_worker: #{msg}"
    ack!
  end
end
