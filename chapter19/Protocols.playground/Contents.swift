//: Playground - noun: a place where people can play

import Cocoa

func printTable(_ data: [[String]], withColumnLables columnLabels: String...) {
    var firstRow = "|"
    var columnWidths = [Int]()
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.characters.count)
    }
    print(firstRow)
    
    for row in data {
        var out = "|"
//        for item in row {
//            out += " \(item) |"
//        }
        for (j, item) in row.enumerated() {
            let paddingNeeded = columnWidths[j] - item.characters.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        print(out)
    }
}

let data = [
    ["Joe", "30", "6"],
    ["Karan", "40", "18"],
    ["Fred", "50", "20"],
]

printTable(data, withColumnLables: "Employee Name", "Age", "Years of Experience")

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department {
    let name: String
    var people = [Person]()
    
    init(name: String) {
        self.name = name
    }
    
    mutating func add(_ person: Person) {
        people.append(person)
    }
}

var department = Department(name: "Engineering")
department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Karan", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20))
