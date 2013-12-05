class Integer
  def primes
    Array.new.tap do |primes|
      (2..self).to_a.tap do |candidates|
        while candidates.any?
          candidate = candidates.shift
          primes << candidate
          candidates -= ((candidate..self).step(candidate).to_a)
        end
      end
    end
  end
end

p 9.primes

p 9.primes == [2,3,5,7]

p 100.primes