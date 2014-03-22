require 'bundler/setup'
require "minitest/autorun"
require "minitest/pride"

Bundler.require
require "wrong"
require 'wrong/adapters/minitest'
Wrong.config.color


 class TestCase < Minitest::Test
 	include Wrong
end