# frozen_string_literal: true

require 'sinatra/activerecord'

## JournalModel
class Journal < ActiveRecord::Base
  validates_presence_of :title, :description
end
