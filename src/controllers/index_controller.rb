# frozen_string_literal: true

require 'sinatra'

## PlayersController
class IndexController < Sinatra::Base
  get '/' do
    'Hello World'
  end
end
