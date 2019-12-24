require 'ruboty'

module Ruboty
  class Robot
    def headless_run(message)
      pp message
      dotenv
      bundle
      setup
      remember
      handle
      adapter
      receive(body: message)
    end
  end
end
