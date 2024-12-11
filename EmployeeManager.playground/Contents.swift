
var employee: [[Any]] = [
    ["Name",15.30,"Department",0.0,0]
    ]
var employeeData: [Int: [Any]] = [
        1: employee[0]
    ]
    
    // New Hire (adds employee with their name, hourly pay, and department, hours worked, and 0 or 1 of a warning to a dictionary with the employee number as the legend and an array as the contents)
    func newHire(name: String, pay: Double, dep: String) {
        guard !name.isEmpty else {
            print("Error: Name cannot be empty.")
            return
        }
    
        guard pay > 0 else {
            print("Error: Pay must be a positive number.")
            return
        }
    
        guard !dep.isEmpty else {
            print("Error: Department cannot be empty.")
            return
        }
    
        let newEmployee: [Any] = [name, pay, dep, 0.0, 0]
    
        employee.append(newEmployee)
        employeeData[employee.count] = employee[employee.count - 1]
        print("Employee added to database: \(newEmployee[0]) \nHourly Wage: \(newEmployee[1]) \nDepartment: \(newEmployee[2])")
    }
    // company bank (company bank account)
    struct Bankroll{
        var balance = 0.0
        mutating func deposit(amnt: Double){
            balance += amnt
            balance = (balance * 100).rounded(.down) / 100
            print("Your new Balance is: \(balance)")
        }
        mutating func withdraw(amnt: Double){
            balance -= amnt
            balance = (balance * 100).rounded(.down) / 100
            print("Your new Balance is: \(balance)")
        }
        mutating func sales(){
            let totalsales = Double.random(in: 1000...10000)
            print("$\((totalsales * 100).rounded(.down) / 100) made from this week's sales")
            self.deposit(amnt: (totalsales * 100).rounded(.down) / 100)
        }
        mutating func fireEmployee(empId: Int) {
            if let removedEmployee = employeeData.removeValue(forKey: empId) {
                    print("Fired employee: \(removedEmployee[0])")
                    print("\(removedEmployee[0]) has been paid $\(removedEmployee[1] as! Double * (removedEmployee[3] as! Double))")
                    self.withdraw(amnt: removedEmployee[1] as! Double * (removedEmployee[3] as! Double))
                } else {
                    print("No employee found with that ID.")
                }
            
           /* self.withdraw(amnt: employeeData[empId]![1] as! Double * (employeeData[empId]![3] as! Double))
            print("\(employeeData[empId]![0]) has been paid $\(employeeData[empId]![1] as! Double * (employeeData[empId]![3] as! Double))")
        */
        }
        mutating func payall(){
            var total = 0.0
            for (iD, emp) in employeeData{
                let wage = emp[1] as! Double
                let hours = emp[3] as! Double
                let mny = wage * hours
                total += mny
                let trunktotal = (total * 100).rounded(.down) / 100
                print("\(emp[0]) has been paid $\(trunktotal)")
                self.withdraw(amnt: trunktotal)
                employeeData[iD]![3] = 0.0
            }
            if balance < 0{
                print("You are now in debt $\(balance)")
            }
            
        }
    }
    // emphoursworked (how many hours worked the past two weeks)
    func timeclock(empId: Int, hours: Double){
        employeeData[empId]![3] = hours
        print("\(String(describing: employeeData[empId]![0])) has logged \(hours) hours of work these past two weeks")
    }
    // Warning system (adds or removes warnings from employees if warnings get to 2 they are fired)
    func warningsystem(empId: Int, warnbool: Bool){
        let curwarnings = employeeData[empId]?[4]
        if warnbool == false && curwarnings as! Int == 0{
            print("No warning to be removed for \(employeeData[empId]![0])")
        }else if warnbool == true && curwarnings as! Int == 0{
            employeeData[empId]?[4] = 1
            print("Warning has been administered for \(employeeData[empId]![0])")
        }else if curwarnings as! Int > 0 && warnbool == false{
            employeeData[empId]?[4] = curwarnings as! Int - 1
            print("Warning has been removed for \(employeeData[empId]![0])")
        }else if curwarnings as! Int == 1 && warnbool == true{
            employeeData[empId]?[4] = 2
            print("\(employeeData[empId]![0]) is eligible for termination")
        }
    }
    // FireEmployee (fires employee)
    /*
    func fireEmployee(empid: Int){
        if let removedEmployee = employeeData.removeValue(forKey: empid) {
                    print("Removed employee: \(removedEmployee[0])")
                } else {
                    print("No employee found with that ID.")
                }
    }
     */
    // List employee data (Shows all employee data)
    func listEmployees(){
        print("-------------------------------------------------------------------------------------------------------------------------------")
        for (empid, emp) in employeeData{
            let warnvalue = emp[4] as? Int
            if warnvalue == 0{
                print(" ID: \(empid) | Name: \(emp[0]) | Hourly Wage: \(emp[1]) | Department: \(emp[2]) | Hours to be Paid: \(emp[3]) | Employee does not have a warning ")
            }else if warnvalue == 1{
                print(" ID: \(empid) | Name: \(emp[0]) | Hourly Wage: \(emp[1]) | Department: \(emp[2])| Hours to be Paid: \(emp[3]) | Employee has a warning ")
            }else{
                print(" ID: \(empid) | Name: \(emp[0]) | Hourly Wage: \(emp[1]) | Department: \(emp[2])| Hours to be Paid: \(emp[3]) | Eligible for Termination ")
            }
            print("-------------------------------------------------------------------------------------------------------------------------------")
        }
    }
//  Buisness creator
struct Buisness {
    var name: String?
    var description: String?
    var buisnesshours: [String: String]?
    
    // Print business hours
    func printHours() {
                let daysOfWeek = [
                    "Monday", "Tuesday", "Wednesday", "Thursday",
                    "Friday", "Saturday", "Sunday"
                ]
                
                print("Business Hours:".uppercased())
                print("──────────────────────────────────────")
                
                for day in daysOfWeek {
                    // checks if day is a key in buisnesshours and prints closed if it isnt
                    if let hours = buisnesshours?[day] {
                        print("\(day): \(hours)")
                    } else {
                        print("\(day): Closed")
                    }
                }
                
                print("──────────────────────────────────────")
            
            
    }
    
    // Print business info (name, description, and hours)
    func printInfo() {
        if let name = name {
            print("Business Name: \(name)")
        } else {
            print("Business name is not set.")
        }
        
        if let description = description {
            print("Description: \(description)")
        } else {
            print("Description is not set.")
        }
        
        if let hours = buisnesshours {
            self.printHours()
        } else {
            print("Business hours are not set.")
        }
    }
    
    // Set business hours with validation
    mutating func setHours(hours: [String: String]?) {
        if let hours = hours, !hours.isEmpty {
            buisnesshours = hours
            print("Business hours have been set.")
        } else {
            print("Error: Invalid business hours. Please provide a non-empty dictionary.")
        }
    }
    
    // Set business name with validation
    mutating func setName(n: String?) {
        if let n = n, !n.isEmpty {
            name = n
            print("Business name has been set to \(n).")
        } else {
            print("Error: Invalid business name. Please provide a non-empty string.")
        }
    }
    
    // Set business description with validation
    mutating func setDescription(D: String?) {
        if let D = D, !D.isEmpty {
            description = D
            print("Description has been set to \(D).")
        } else {
            print("Error: Invalid description. Please provide a non-empty string.")
        }
    }
}

    //               Test Code Area               \\
var bank1 = Bankroll()
bank1.sales()
newHire(name: "Matthew", pay: 15.00, dep: "Electronics")
//listEmployees()
newHire(name: "Joe", pay: 17.50, dep: "Produce")
//listEmployees()
warningsystem(empId: 2, warnbool: true)
warningsystem(empId: 1, warnbool: true)
warningsystem(empId: 1, warnbool: true)
listEmployees()
warningsystem(empId: 2, warnbool: false)
listEmployees()
bank1.fireEmployee(empId: 1)
//fireEmployee(empid: 1)
//fireEmployee(empid: 4)
listEmployees()
bank1.deposit(amnt: 100.00)
//bank1.sales()
timeclock(empId: 2, hours: 31.0)
timeclock(empId: 3, hours: 62.0)
listEmployees()
bank1.fireEmployee(empId: 2)
bank1.payall()
listEmployees()

var myBusiness = Buisness(name: nil, description: nil, buisnesshours: nil)

myBusiness.printInfo()

myBusiness.setName(n: "Coffee Shop")
myBusiness.setDescription(D: "A cozy place for coffee lovers.")
myBusiness.setHours(hours: ["Monday": "8:00 AM - 5:00 PM", "Tuesday": "8:00 AM - 5:00 PM"])
myBusiness.printInfo()
myBusiness.setName(n: "")
myBusiness.setDescription(D: "")
myBusiness.setHours(hours: [:])


