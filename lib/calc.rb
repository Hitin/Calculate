require "calc/version"
require "calc/instance"

module Calc

  class CalcZeroDivisionError < StandardError
  end

  def self.new
  	Instance.new
  end

end
