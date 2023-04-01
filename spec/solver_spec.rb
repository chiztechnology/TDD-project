require_relative '../classes/solver'

describe Solver do
  describe '#factorial' do
    context 'takes one argument, an integer N' do
      it 'returns the factorial' do
        factorial_negative = Solver.new(-5)
        factorial_zero = Solver.new(0)
        factorial_five = Solver.new(5)
        expect { factorial_negative.factorial }.to raise_error(ArgumentError, 'Error: Please enter a positive number')
        expect(factorial_zero.factorial).to eq(1)
        expect(factorial_five.factorial).to eq(120)
      end
    end
  end

  describe '#reverse' do
    context 'takes one argument, a string word' do
      it 'returns word reversed' do
        flip = Solver.new('Hello')
        expect(flip.reverse).to eq('olleH')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'takes one argument, an integer N, and returns a string' do
      it 'When N is divisible by 3, return "fizz"' do
        fizz = Solver.new(6)
        expect(fizz.fizzbuzz).to eq('fizz')
      end

      it 'When N is divisible by 5, return "buzz"' do
        buzz = Solver.new(20)
        expect(buzz.fizzbuzz).to eq('buzz')
      end

      it 'When N is divisible by 3 and 5, return "fizzbuzz"' do
        buzzfizz = Solver.new(30)
        expect(buzzfizz.fizzbuzz).to eq('fizzbuzz')
      end

      it 'Any other case, return N as a string' do
        other = Solver.new(17)
        expect(other.fizzbuzz).to eq('17')
      end
    end
  end
end
