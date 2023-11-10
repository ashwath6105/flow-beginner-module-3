pub contract EmployeeRegistry {

    // Array that stores a list of employee records.
    pub var employeeRecords: [Employee]

    // Struct that represents an employee with their attributes.
    pub struct Employee {
        pub let name: String
        pub let age: Int
        pub let position: String

        // Initializer function that sets the employee's properties.
        init(_name: String, _age: Int, _position: String) {
            self.name = _name
            self.age = _age
            self.position = _position
        }
    }

    // Public function to add a new employee record to the registry.
    pub fun addEmployee(name: String, age: Int, position: String) {
        // Create a new Employee instance with the provided data.
        let newEmployee = Employee(_name: name, _age: age, _position: position)
        // Add the new employee record to the employeeRecords array.
        self.employeeRecords.append(newEmployee)
    }

    // Public function to retrieve the details of an employee by index.
    pub fun getEmployeeDetails(index: UInt): Employee? {
        if index < UInt(self.employeeRecords.length) {
            return self.employeeRecords[index]
        } else {
            return nil
        }
    }

    // Initializer function that initializes the employeeRecords list to an empty list.
    init() {
        self.employeeRecords = []
    }
}

