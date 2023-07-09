# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require_relative '../models/journal'
require_relative '../utils/RenderUtils'

## JournalController
class JournalController < Sinatra::Base
  get '/journal/seed' do
    @journal = Journal.new
    @journal.title = 'title 500'
    @journal.description = 'description 500'
    @journal.save

    RenderUtils.render_one(@journal)
  end

  get '/journal' do
    @users = Journal.all
    RenderUtils.render_many(@users)
  end
end
