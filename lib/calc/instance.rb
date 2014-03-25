module Calc
  class Instance

    attr_reader :state

    def initialize
      super
      @state = 0
    end

    def sum(par1, par2 = @state)
      @state = par1 + par2
    end

    def minus(par1 = @state, par2)
      @state = par1 - par2
    end

    def mul(par1, par2 = @state)
      @state = par1 * par2
    end

    def del(par1 = @state, par2)
      @state = par1 / par2
    rescue ZeroDivisionError => e
      raise CalcZeroDivisionError
    end

    def save
      @save = @state
    end

    def recover 
      @state = @save if @save
    end
    
    def reset
      @state = 0
    end

    def inspect
      @state
    end

  end
end
