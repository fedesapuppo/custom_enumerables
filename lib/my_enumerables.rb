# frozen_string_literal: true

module Enumerable
  def my_each(&block)
    return self unless block_given?
    for element in self
      yield element
    end
  end

  def my_each_with_index
    return self unless block_given?

    index = 0
    each do |element|
      yield element, index
      index += 1
    end
  end

  def my_select
    result = []
    each do |element|
      result << element if yield(element) == true
    end
    result
  end

  def my_all?
    each do |element|
      return false if yield(element) == false
    end
    true
  end

  def my_any?
    each do |element|
      return true if yield(element) == true
    end
    false
  end

  def my_none?
    each do |element|
      return false if yield(element) == true
    end
    true
  end

  def my_count
    count = 0
    return length unless block_given?

    each do |element|
      count += 1 if yield(element) == true
    end
    count
  end

  def my_map(&block)
    result = []

    each do |element|
      result << block.call(element)
    end
    result
  end

  def my_inject(*args)
    val = args.size.positive?
    count = val ? args[0] : self[0]

    drop(val ? 0 : 1).each do |element|
      count = yield(count, element)
    end
    count
  end
end
