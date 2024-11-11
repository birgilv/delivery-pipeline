require 'rails_helper'
require 'pg'

RSpec.describe 'Database Connection' do
  it 'successfully connects to the database' do
    expect {
      ActiveRecord::Base.connection.execute("SELECT 1")
    }.not_to raise_error, "Failed to connect to the database"
  end
end