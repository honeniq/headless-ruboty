require 'spec_helper'

describe 'ruboty with headless_run' do
  before do
    @robot = Ruboty::Robot.new
  end

  it '#headless_run has been defined' do
    expect(@robot).to respond_to("headless_run")
  end

  it '#headless_run puts reply message to stdout' do
    $stdout = StringIO.new
    @robot.headless_run('ruboty ping')
    expect($stdout.string).to eq "pong\n"
  end
end
