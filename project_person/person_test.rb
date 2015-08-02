require 'minitest/autorun'
require_relative 'person'

class TestPerson < MiniTest::Unit::TestCase
    
  def test_full_name
    first_name = 'John'
    last_name = 'Snow'
    person = Person.new(first_name, last_name)
    full_name = person.full_name
    assert_equal('John Snow', full_name)
  end

  def test_set_first_name
  	person = Person.new('John', 'Snow')
  	person.set_first_name('Mark')
  	assert_equal('Mark Snow', person.full_name) 
  end
  
end
