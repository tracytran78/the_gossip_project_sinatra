require 'bundler'
Bundler.require
require_relative 'lib/gossip'
binding.pry
CSV.foreach("./db/gossip.csv") do |row|
  puts row[2]
end
