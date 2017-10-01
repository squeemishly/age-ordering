gem 'minitest'
require 'pry'
require 'minitest/autorun'
require_relative './coding_challenge'

class AgeOrderingTest < Minitest::Test
  attr_reader :age_ordering

  def setup
    @age_ordering = AgeOrdering.new
    data = [
            ['Frank', 33],
            ['Stacy', 15],
            ['Juan', 24],
            ['Dom', 32],
            ['Steve', 24],
            ['Jill', 24]
          ]
  end

  def test_it_exists
    assert_instance_of AgeOrdering, age_ordering
  end

  def test_it_returns_the_name_of_one_person
    assert_equal ["Boudi"], age_ordering.names([["Boudi", 12]])
  end

  def test_it_returns_the_names_of_two_people
    assert_equal ["Boudi", "Czarnecki"], age_ordering.names([["Boudi", 12], ["Czarnecki", 35]])
  end
end
