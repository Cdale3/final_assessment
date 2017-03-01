require 'minitest/autorun'
require 'minitest/pride'
require './lib/store'
require './lib/employee'


class StoreTest < Minitest::Test

  def test_it_exists
    store = Store.new("Brookstone")
    assert_instance_of Store, store
  end

  def test_it_gets_name
    store = Store.new("Brookstone")
    assert_equal "Brookstone", store.name
  end

  def test_it_gets_employees
    store = Store.new("Brookstone")
    assert_equal [], store.employees
    employee = Employee.new("Rachel", 92836, "$32000")
    store.hire_employee(employee)
    assert_equal 1, store.employees.count
  end
end
