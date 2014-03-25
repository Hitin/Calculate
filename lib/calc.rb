require "calc/version"

module Calc
	class CalcZeroDivisionError < StandardError

	end

	  def self.Init(memb = 0)
	  		@sost = memb
	  end

	  def self.sum(par1, par2 = @sost)
	  		@sost = par1 + par2
	  end

	  def self.minus(par1, par2 = @sost)
	  		@sost = par1 - par2
	  end

	  def self.mul(par1, par2 = @sost)
	  		@sost = par1 * par2
	  end

	  def self.del(par1, par2 = @sost)
	  		@sost = par1 / par2
	  	rescue ZeroDivisionError => e 
	  		raise CalcZeroDivisionError
	  end

	  def self.memb(par1)
	  		@sost = par1
	  end

	  def self.reset
	  		@sost = 0
	  end

end

