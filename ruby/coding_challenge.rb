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
    sorted = arr.sort { |x, y| x[1] <=> y[1] }
    sorted.each_with_object( {} ) do |person, result|
      (result[person[1]] ||= []) << person[0]
    end
  end
end
