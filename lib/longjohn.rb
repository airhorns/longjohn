require 'optparse'
require 'yaml'
require 'isaac/bot'


longjohn = Isaac::Bot.new

require 'longjohn/options.rb'

 
longjohn.configure do |c|
    c.nick = "LongJohnSilver"
    c.server = "irc.freenode.net"
    c.port = 6667
  end
  
longjohn.on :connect do 
    puts "Connected."
    join "#bottest"
  end
  
longjohn.on :channel, /balls/ do
    msg channel, "ew gross"
  end

longjohn.start