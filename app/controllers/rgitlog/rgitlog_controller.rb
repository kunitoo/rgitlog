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
      walker = Rugged::Walker.new(repo)
      walker.sorting(Rugged::SORT_DATE)
      walker.push(repo.last_commit)
      walker.to_a
    end
  end
end
