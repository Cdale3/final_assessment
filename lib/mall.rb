class Mall
  attr_reader :stores, :employees
  def initialize
    @stores = []
    @employees = []
  end

  def open_store(store)
    stores << store
  end

  def hire_employee(employee)
    employees << employee
  end

  # def store_names
  #   store.name
  # end
end
