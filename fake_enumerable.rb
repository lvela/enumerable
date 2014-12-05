module FakeEnumerable
  def map
    out = []
    each { |e| out << yield(e) }
    out
  end

  def select
    out = []
      each {|e| out << e if yield(e) }
    out
  end

  # rubinus implementation:
  # https://github.com/rubinius/rubinius/blob/master/kernel/common/enumerable.rb#L290
  def reduce(acc = nil)
    each do |a|
      if acc.nil?
        acc = a
      else
        acc = yield(acc, a)
      end
    end

    acc
  end
end
