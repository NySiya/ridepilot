# config valid for current version and patch releases of Capistrano
lock "~> 3.10.2"

set :application, "ridepilot"
set :repo_url, "git@github.com:NySiya/ridepilot.git"

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache',
'tmp/sockets', 'public/media')
set :linked_files, fetch(:linked_files, []).push('.env')

set :scm, :git

set :pty, true

set :keep_releases, 5

set :assets_prefix, ->{ "#{fetch(:application)}/assets" }

namespace :deploy do

  task :cleanup_assets do
    on roles :all do
      execute "cd #{release_path}/ && ~/.rvm/bin/rvm default do bundle exec rake assets:clobber RAILS_ENV=#{fetch(:stage)}"
    end
  end

  before :updated, :cleanup_assets
end
