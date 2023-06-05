require_relative 'config/environment.rb'
#    require "pry"

 def using_pry
    greeting = "We're using pry!"
    puts greeting
    binding.pry
    stop = "Our program is frozen now."
 end

 using_pry