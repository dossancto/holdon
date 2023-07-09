# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require './src/models/journal_model'
require 'dotenv'

Dotenv.load

class App < Sinatra::Base
  before do
    content_type :json
  end

  get '/' do
    p 'salve'
  end

  get '/journal/seed' do
    @journal = Journal.new
    @journal.title = 'title 500'
    @journal.description = 'description 500'
    @journal.save

    @journal.to_json
  end

  get '/journal' do
    @users = Journal.all
    @users.to_json
  end
end
