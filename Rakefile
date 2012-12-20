#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Blogger::Application.load_tasks

# namespace, desc, task

task :default => "greetings:hello"

namespace :greetings do

  desc "This greates you in style"
  task :hello do
    puts "Hellow, this is stylish"
  end

  desc "this says goodby"
  task :goodbye => :hello do
    puts "Goodbye"
  end

  desc "offer hot beverage"
  task "beverage" do
    puts "you look distressed, can I offer you a hot beverage?"
  end

end
