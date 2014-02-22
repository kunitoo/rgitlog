require_dependency 'rgitlog/application_controller'
require 'rugged'

module Rgitlog
  class RgitlogController < ApplicationController
    def index
      @commits = commits
    end

    private

    def commits
      path = Rugged::Repository.discover(Dir.pwd)
      repo = Rugged::Repository.new(path)
      repo.head.log.map {|l| repo.lookup(l[:id_new]) }
    end
  end
end
