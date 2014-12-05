$:.unshift File.dirname(__FILE__)
require "minitest/autorun"
require "nums"

describe "FakeEnumerable" do
  before do
    @nums = Nums.new
  end

  it "supports map" do
    @nums.map { |x| x + 1 }.must_equal([2,4,7])  
  end

  it "supports select" do
    @nums.select { |x| x.even? }.must_equal([6])
  end

  it "supports reduce" do
    #@nums.reduce(:+).must_equal(69)
    @nums.reduce { |s,e| s + e }.must_equal(10)
    @nums.reduce(1) { |s,e| s + e }.must_equal(11)
  end
end
