require "calc/version"

module Calc
	class CalcZeroDivisionError < StandardError

	end

	  def self.sum(par1, par2)
	  		par1 + par2
	  end

	  def self.minus(par1, par2)
	  		par1 - par2
	  end

	  def self.mul(par1, par2)
	  		par1 * par2
	  end

	  def self.del(par1, par2)
	  		par1 / par2
	  	rescue ZeroDivisionError => e 
	  		raise CalcZeroDivisionError
	  end

end

