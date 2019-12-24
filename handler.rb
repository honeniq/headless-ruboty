require 'json'
require 'ruboty'
require './lib/ruboty/headless_run.rb'

def talk(event:, context:)
  message = JSON.parse(event['body'])['webhook_event']['body']
  @robot = Ruboty::Robot.new
  @robot.headless_run(message)

  {
    statusCode: 200,
    body: {
      message: 'done',
    }.to_json
  }
end
