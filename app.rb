# frozen_string_literal: true

require 'sinatra'
require './src/controllers/journal_controller'

## App
class App < Sinatra::Base
  before do
    content_type :json
  end

  use JournalController

  get '/' do
    p 'salve'
  end
end
