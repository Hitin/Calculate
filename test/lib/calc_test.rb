require "test_helper"
class CalcTest < TestCase
	
	def test_init
		result = Calc.Init
		assert { result == 0 }
		result = Calc.Init(7)
		assert { result == 7 }
	end
	
	def test_sum
		result = Calc.sum(2,3)
		assert { result == 5 }
		result = Calc.sum(3)
		assert { result == 8 }
		result = Calc.sum(4)
		assert { result == 12 }

	end

	def test_minus
		result = Calc.minus(3,4)
		assert { result == -1 }
		result = Calc.minus(6,4)
		assert { result == 2 }
		result = Calc.minus(3)
		assert { result == 1 }
	end

	def test_mul
		result = Calc.mul(2,3)
		assert { result == 6 }
		result = Calc.mul(3,0)
		assert { result == 0 }
	end

	def test_del
		result = Calc.del(3,3)
		assert { result == 1 }
		result = Calc.del(3,2)
		assert { result == 1 }
		assert_raises(Calc::CalcZeroDivisionError){ Calc.del(3,0) }
	end

	def test_memb
		memb = Calc.memb(0)
		assert { memb == 0 }
		memb = Calc.memb(7)
		assert { memb == 7 }
		result = Calc.mul(2)
		assert { result == 14 }
		result = Calc.mul(2)
		assert { result == 28 }
		assert { memb == 7 }
	end

	def test_reset
		result = Calc.reset
		assert { result == 0 }

	end
end