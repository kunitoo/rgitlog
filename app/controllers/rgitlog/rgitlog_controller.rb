require_dependency 'rgitlog/application_controller'
require 'rugged'

module Rgitlog
  class RgitlogController < ApplicationController
    def index
      @commits  = commits
      @branches = branches
    end

    private

    def commits
      repo.walk(repo.last_commit).to_a
    end

    def branches
      repo.branches.to_a
    end

    def repo
      path = Rugged::Repository.discover(Dir.pwd)
      Rugged::Repository.new(path)
    end
  end
end
