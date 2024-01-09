def eratosthenes_sieve(upper_limit)
  numbers = (2..upper_limit).to_a

  (2..Math.sqrt(upper_limit).to_i).each do |num|
    numbers.reject! { |x| x != num && x % num == 0 }
  end

  numbers
end

if ARGV.length > 0
  upper_limit = ARGV[0].to_i
  primes = eratosthenes_sieve(upper_limit)
  puts primes.join(", ")
else
  puts "右記のように上限値を入力ください: ruby eratos.rb 30"
end
