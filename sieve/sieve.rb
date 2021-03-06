class Sieve
  def initialize(number)
    @primes_array = []
    (1..number).each {|n| @primes_array << n }
  end

  def primes
    p1 = 2
    p2 = p1 + 1
    while p1 < @primes_array[-1]
      p1 += p1
      @primes_array - [p1]
      p1 = p2
      p2 += 1
    end
    @primes_array
  end
end
