import EmployeeRegistry from 0x05

// Define a transaction that adds a new employee record to the registry.
transaction(name: String, age: Int, position: String) {

    // The prepare function sets the signer of the transaction to the AuthAccount.
    prepare(signer: AuthAccount) {
        // In this case, the prepare function doesn't need to do anything else.
    }

    // The execute function calls the addEmployee function of the EmployeeRegistry contract with the provided parameters.
    execute {
        EmployeeRegistry.addEmployee(name: name, age: age, position: position);

        // Log a message to indicate that the employee record has been added.
        log("Employee record added.")
    }
}
