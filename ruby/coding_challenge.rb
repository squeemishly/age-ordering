require 'pry'

class AgeOrdering
  def names(arr)
    sorted = arr.sort { |x, y| x[1] <=> y[1] }
    sorted.map do |name|
      name[0]
    end
  end

  def name_and_ages(arr)
    sorted = arr.sort { |x, y| x[1] <=> y[1] }
    sorted.map do |person|
      "#{person[0]} (#{person[1]})"
    end
  end

  def hashify(arr)
    hash = {}
    arr.map do |person|
      hash[person[1]] = [person[0]]
    end
    hash
  end
end
