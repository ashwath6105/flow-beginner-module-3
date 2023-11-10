import EmployeeRegistry from 0x05

// Define a script that returns an Employee struct.
pub fun main(index: UInt): EmployeeRegistry.Employee {
    // Return the Employee struct at the specified index in the employeeRecords array.
    return EmployeeRegistry.employeeRecords[index];
}
