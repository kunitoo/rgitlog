require_dependency 'rgitlog/application_controller'
require 'grit'

module Rgitlog
  class RgitlogController < ApplicationController
    def index
      @commits = Grit::Repo.new('.').commits
    end
  end
end
