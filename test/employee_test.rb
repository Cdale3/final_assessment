require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'


class EmployeeTest < Minitest::Test

  def test_it_exists
    employee = Employee.new("Rachel", 92836, "$32000")
    assert_instance_of Employee, employee
  end

  def test_it_gets_name
    employee = Employee.new("Rachel", 92836, "$32000")
    assert_equal "Rachel", employee.name
  end

  def test_it_gets_employee_id
    employee = Employee.new("Rachel", 92836, "$32000")
    assert_equal 92836, employee.employee_id
  end

  def test_it_gets_salary
    employee = Employee.new("Rachel", 92836, "$32000")
    assert_equal 32000, employee.salary
  end
end
