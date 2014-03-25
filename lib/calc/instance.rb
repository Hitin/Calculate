module Calc
  class Instance

    def initialize
      super
      @sost = 0
    end

    def sum(par1, par2 = @sost)
      @sost = par1 + par2
    end

    def minus(par1 = @sost, par2)
      @sost = par1 - par2
    end

    def mul(par1, par2 = @sost)
      @sost = par1 * par2
    end

    def del(par1 = @sost, par2)
      @sost = par1 / par2
    rescue ZeroDivisionError => e
      raise CalcZeroDivisionError
    end

    def state
      @sost
    end

    def save
      @save = @sost
    end

    def recover 
      @sost = @save if @save  
    end
    
    def reset
      @sost = 0
    end

  end
end
