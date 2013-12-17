require_dependency 'rgitlog/application_controller'
require 'grit'

module Rgitlog
  class RgitlogController < ApplicationController
    def index
      @commits = repo.commits
    end

    private
    def repo dir = Dir.pwd
      parent = parent_dir(dir)
      return [] if dir == parent
      return Grit::Repo.new(dir) if Dir.entries(dir).include?('.git')
      repo(parent)
    end

    def parent_dir currrent_dir
      File.expand_path('..', currrent_dir)
    end
  end
end
