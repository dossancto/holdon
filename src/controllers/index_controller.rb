# frozen_string_literal: true

require 'sinatra'

## IndexController
class IndexController < Sinatra::Base
  get '/' do
    'Hello World'
  end
end
