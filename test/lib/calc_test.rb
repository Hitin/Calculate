require "test_helper"
class CalcTest < TestCase
	def test_sum
		result = Calc.sum(2,3)
		assert { result == 5 }
		result = Calc.sum(3,4)
		assert { result == 7 }
	end

	def test_minus
		result = Calc.minus(3,4)
		assert { result == -1 }
		result = Calc.minus(6,4)
		assert { result == 2 }
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

end