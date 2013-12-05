class Integer
  # Make a list of the integers from 2 to n
  # For each integer i, 2 <= i <= n
  # If i has not been crossed out
  # Cross out all multiples of i (except i itself).
  def primes
    # return the array 'primes'
    Array.new.tap do |primes|
      (2..self).to_a.tap do |candidates|
        # 'cross off' candidates & their multiples
        while candidates.any?
          # copy to the list of primes
          primes << prime = candidates[0]

          # 'cross off' prime and multiples.
          candidates -= ((prime..self).step(prime).to_a)
        end
      end
    end
  end
end

p 9.primes

p 9.primes == [2,3,5,7]

p 100.primes