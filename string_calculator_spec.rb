require 'rspec'


require_relative './string_calculator'

RSpec.describe "StringCalculator" do
  describe "#add_numbers" do
    it "returns 0 when string is empty" do
      expect(add_numbers("")).to eq(0)
    end

    it "returns the number for a single number string" do
      expect(add_numbers("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(add_numbers("1,5")).to eq(6)
    end

    it "handles new lines between numbers" do
      expect(add_numbers("1\n2,3")).to eq(6)
    end

    it "supports different delimiters" do
      expect(add_numbers("//;\n1;2")).to eq(3)
    end

    it "return an error for negative numbers" do
      expect { add_numbers("1,-2,3") }.to error("negative numbers not allowed -2")
    end

    it "return an error for negative numbers" do
      expect { add_numbers("1,\n") }.to error("invalid input")
    end
  end
end