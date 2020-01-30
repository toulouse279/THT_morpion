require 'bundler'
Bundler.require

require_relative 'lib/Board'
require_relative 'lib/Player'
require_relative 'lib/Game'
require_relative 'lib/BordCase'


Game.new.go