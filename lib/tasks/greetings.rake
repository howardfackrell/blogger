# namespace, desc, task

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

