gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

     medusa.stare(victim)
     assert_equal 1, medusa.statues.count

     assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
   # your code here

    medusa = Medusa.new("Cassiopeia")

    victim_one = Person.new("Perseus")
    victim_two = Person.new("Josh")
    victim_three = Person.new("Sean")
    victim_four = Person.new("Megan")

    medusa.stare(victim_one)

    medusa.stare(victim_two)
    medusa.stare(victim_three)
    medusa.stare(victim_four)

    assert victim_four.stoned?
    refute victim_one.stoned?

  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # your code here
    medusa = Medusa.new("Cassiopeia")

    victim_one = Person.new("Perseus")
    victim_two = Person.new("Josh")
    victim_three = Person.new("Sean")
    victim_four = Person.new("Megan")


    medusa.stare(victim_one)
    assert victim_one.stoned?
    medusa.stare(victim_two)
    medusa.stare(victim_three)
    medusa.stare(victim_four)


    assert victim_four.stoned?
    assert victim_one.unstoned?
    refute victim_one.stoned?


  end

end
