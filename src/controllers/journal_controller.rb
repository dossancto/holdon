# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require_relative '../models/journal'

## JournalController
class JournalController < Sinatra::Base
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
