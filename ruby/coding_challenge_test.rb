gem 'minitest'
require 'pry'
require 'minitest/autorun'
require_relative './coding_challenge'

class AgeOrderingTest < Minitest::Test
  attr_reader :age_ordering,
              :data

  def setup
    @age_ordering = AgeOrdering.new
    @data = [
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

  def test_it_return_a_list_of_names_sorted_by_age
    assert_equal ["Stacy", "Juan", "Steve", "Jill", "Dom", "Frank"], age_ordering.names(data)
  end

  def test_it_can_output_the_name_with_the_age_for_one_person
    assert_equal ["Boudi (12)"], age_ordering.name_and_ages([["Boudi", 12]])
  end

  def test_it_returns_the_names_and_ages_of_two_people
    assert_equal ["Boudi (12)", "Czarnecki (35)"], age_ordering.name_and_ages([["Boudi", 12], ["Czarnecki", 35]])
  end

  def test_it_return_a_list_of_names_and_ages_sorted_by_age
    assert_equal ["Stacy (15)", "Juan (24)", "Steve (24)", "Jill (24)", "Dom (32)", "Frank (33)"], age_ordering.name_and_ages(data)
  end

  def test_it_can_hashify_one_person
    assert_equal ({12 => ["Boudi"]}), age_ordering.hashify([["Boudi", 12]])
  end

  def test_it_can_hashify_two_people_of_different_ages
    assert_equal ({12 => ["Boudi"], 35 => ["Czarnecki"]}), age_ordering.hashify([["Boudi", 12], ["Czarnecki", 35]])
  end

  def test_it_can_hashify_two_people_of_the_same_age
    assert_equal ({12 => ["Boudi", "Czarnecki"]}), age_ordering.hashify([["Boudi", 12], ["Czarnecki", 12]])
  end

  def test_it_can_hashify_and_sort_a_group_of_people_of_varying_and_duplicated_ages
    assert_equal ({15=>["Stacy"], 24=>["Juan", "Steve", "Jill"], 32=>["Dom"], 33=>["Frank"]}), age_ordering.hashify(data)
  end
end
