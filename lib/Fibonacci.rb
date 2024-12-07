class Fibonacci

  # Iterative method
  def self.fibs(num)
    response = []
    sum1 = 0
    sum2 = 1
    aux = 0 #Auxiliar variable to interchange sum1 and sum2
    if num <= 1
      response << sum1
    else
      response << sum1 << sum2
      (3..num).each do
        aux = sum1 + sum2
        sum1 = sum2
        sum2 = aux
        response << sum2
      end
    end  
    response
  end
  
  # This method uses pure recursion, without any iterative block
  # The problem is if the user calls this method with more than 1 argument, the calculation breaks
  def self.fibs_pure_rec(num, counter = 1, response = [])
    num = 1 if num < 1
    if counter == 1
      response << 0
    elsif counter == 2
      response << 1
    else
      response << (response[counter-2] + response[counter-3])
    end
    if num == counter
      #End of recursivity; we ofer the response
      response
    else
      self.fibs_pure_rec(num, counter + 1, response)
    end
  end

  # The recursive method uses an recursive private function to calculate the Fibbonaci number,
  # but an iterative block to store it in the matrix
  def self.fibs_rec(num)
    response=[]
    num = 1 if num < 1
    (1..num).each {|i| response << self.fibs_calculate(i)}
    response
  end

  private 

  def self.fibs_calculate(num)
    if num <= 1
      0
    elsif num == 2
      1
    else
      self.fibs_calculate(num-1) + self.fibs_calculate(num-2)
    end
  end

end 