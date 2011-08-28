require File.expand_path("../../lib/amb.rb",  __FILE__)

class Ambiguous
  include Amb
end

# Constraint as an argument
amb = Ambiguous.new
x = amb.choose(1,2,3,4)
amb.assert((x % 2) == 0)
puts x if $DEBUG # 2

# Constraint with no valid execution path => raise
amb = Ambiguous.new
begin
  y = amb.choose(1,3,5)
  amb.assert { y % 2 == 0 }
rescue Amb::ExhaustedError; end

# Constraint as a proc, with arbitrary parameters from args
z = Amb.choose(1,2,3,4)
Amb.assert(3,1) { |i,j| (i*j*z) % 2 == 0 }
puts z if $DEBUG # 2

puts "OK."
