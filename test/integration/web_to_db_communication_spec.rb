require 'rails_helper'
require 'net/http'

RSpec.describe 'Web to Database Communication' do
  it 'allows the web server to communicate with the database' do
    db_host = ENV['DATABASE_HOST'] || 'db' 
    
    db_port = ENV['DATABASE_PORT'] || 5432 

    socket = TCPSocket.new(db_host, db_port)
    expect(socket).to be
  ensure
    socket&.close
  end
end