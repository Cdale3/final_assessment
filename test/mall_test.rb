require 'minitest/autorun'
require 'minitest/pride'
require './lib/store'
require './lib/employee'
require './lib/mall'


class MallTest < Minitest::Test

  def test_it_exists
    mall = Mall.new
    assert_instance_of Mall, mall
  end

  def test_it_shows_stores
    mall = Mall.new
    assert_equal [], mall.stores
  end

  def test_we_add_stores
    mall = Mall.new
    assert_instance_of Mall, mall
    mall.open_store(mall)
    assert_equal 1, mall.stores.count
    assert_equal mall, mall.stores.first
  end

  def test_it_adds_employees_to_stores
    mall = Mall.new
    employee_1 = Employee.new("Rachel", 92836, "$32000")
    employee_2 = Employee.new("Sid", 17638, "$30000")
    mall.open_store(mall)
    mall.stores.first.hire_employee(employee_1)
    mall.stores.first.hire_employee(employee_2)

    assert_equal [employee_1, employee_2], mall.stores.first.employees
    assert_equal 2, mall.stores.first.employees.count
  end

    def test_it_gets_store_names
      store_1 = Store.new("Brookstone")
      store_2 = Store.new("Sharper Image")

      mall = Mall.new
      mall.open_store(store_1)
      mall.open_store(store_2)

      assert_equal ["Brookstone", "Sharper Image"], mall.store_names
    end
end
