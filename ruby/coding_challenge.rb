require 'pry'

class AgeOrdering
  def names(arr)
    sortify(arr).map do |name|
      name[0]
    end
  end

  def name_and_ages(arr)
    sortify(arr).map do |person|
      "#{person[0]} (#{person[1]})"
    end
  end

  def hashify(arr)
    sortify(arr).each_with_object( {} ) do |person, result|
      (result[person[1]] ||= []) << person[0]
    end
  end

  private
  def sortify(arr)
    arr.sort { |x, y| x[1] <=> y[1] }
  end
end
