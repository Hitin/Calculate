require "test_helper"
class CalcTest < TestCase

	def setup 
		@calc = Calc.new
	end
	
	def test_sum
		result = @calc.sum(2,3)
		assert { result == 5 }

		result = @calc.sum(3)
		assert { result == 8 }

		result = @calc.sum(4)
		assert { result == 12 }
	end

	def test_minus
		result = @calc.minus(3,4)
		assert { result == -1 }

		result = @calc.minus(6,4)
		assert { result == 2 }

		result = @calc.minus(3)
		assert { result == -1 }
	end

	def test_mul
		result = @calc.mul(2,3)
		assert { result == 6 }

		result = @calc.mul(2)
		assert { result == 12 }

		result = @calc.mul(3,0)
		assert { result == 0 }
	end

	def test_del
		result = @calc.del(9,3)
		assert { result == 3 }

		result = @calc.del(3)
		assert { result == 1 }

		result = @calc.del(3,2)
		assert { result == 1 }

		assert_raises(Calc::CalcZeroDivisionError){ @calc.del(3,0) }
	end

	def test_save_and_recover_state
		result = @calc.sum(2,3)
		assert { result == 5 }
		# Сохранили 5
		@calc.save

		# Изменяем значение
		result = @calc.del(2)
		assert { result == 2 }

		# Восстанавливаем
		@calc.recover
		assert { @calc.state == 5 }
	end

	def test_not_recover
		# Изменяем значение
		result = @calc.del(4, 2)
		assert { result == 2 }

		# Восстанавливаем когда ни разу не изменяли
		@calc.recover
		# Состояние не меняется
		assert { @calc.state == 2 }
	end

	def test_reset
		result = @calc.sum(2,4)
		assert { result == 6 }

		@calc.reset
		assert { @calc.state.zero? }
	end
end