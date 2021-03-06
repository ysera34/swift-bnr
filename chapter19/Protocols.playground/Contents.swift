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

protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }
    
    func label(forColumn column: Int) -> String
    func itemFor(row: Int, column: Int) -> String
}

protocol PrintableTabularDataSource: TabularDataSource, CustomStringConvertible {
    
}

struct Department: PrintableTabularDataSource {
    let name: String
    var people = [Person]()
    
    init(name: String) {
        self.name = name
    }
    
    mutating func add(_ person: Person) {
        people.append(person)
    }
    
    var numberOfRows: Int {
        return people.count
    }
    
    var numberOfColumns: Int {
        return 3
    }
    
    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Employee Name"
        case 1: return "Age"
        case 2: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsOfExperience)
        default: fatalError("Invalid column!")
        }
    }
    
    var description: String {
        return "Dapartment (\(name))"
    }
}

func computeWidths(for dataSource: TabularDataSource) -> [Int] {
    var columnWidths = [Int]()
    
    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)
        columnWidths.append(columnLabel.characters.count)
    }
    
    for i in 0 ..< dataSource.numberOfRows {
        for j in 0 ..< dataSource.numberOfColumns {
            let item = dataSource.itemFor(row: i, column: j)
            if columnWidths[j] < item.characters.count {
                columnWidths[j] = item.characters.count
            }
        }
    }
    return columnWidths
}

func printTable(_ dataSource: TabularDataSource & CustomStringConvertible) {
    print("Tabel: \(dataSource.description)")
    var firstRow = "|"
    var columnWidths = computeWidths(for: dataSource)
    for i in 0..<dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)
        let paddingNeeded = columnWidths[i] - columnLabel.characters.count
        let padding = repeatElement(" ", count: paddingNeeded).joined()
        let columnHeader = " \(padding)\(columnLabel) |"
        firstRow += columnHeader
    }
    print(firstRow)
    
    for i in 0..<dataSource.numberOfRows {
        var out = "|"
        for j in 0..<dataSource.numberOfColumns {
            let item = dataSource.itemFor(row: i, column: j)
            var paddingNeeded = columnWidths[j] - item.characters.count
            if paddingNeeded < 0 {
                paddingNeeded = 0
            }
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        print(out)
    }
}

var department = Department(name: "Engineering")
department.add(Person(name: "Joe", age: 1000, yearsOfExperience: 6))
department.add(Person(name: "Karan", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20))
printTable(department)

struct Book {
    var title: String
    var author: String
    var rating: Double
}

struct BookCollection: PrintableTabularDataSource {
    let name: String
    var books = [Book]()
    var numberOfRows: Int {
        return books.count
    }
    var numberOfColumns: Int {
        return 3
    }
    var description: String {
        return "Book Collection (\(name))"
    }
    
    init(name: String) {
        self.name = name
    }
    
    mutating func add(_ book: Book) {
        books.append(book)
    }
    
    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Title"
        case 1: return "Author"
        case 2: return "Rating"
        default: fatalError("Invalid column!")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let book = books[row]
        switch column {
        case 0: return book.title
        case 1: return book.author
        case 2: return String(book.rating)
        default: fatalError("Invalid column!")
        }
    }
}

var bookCollection = BookCollection(name: "Harry Potter Series")
bookCollection.add(Book(title: "Harry Potter and the Sorcerer's Stone", author: "J. K. Rowling", rating: 4.5))
bookCollection.add(Book(title: "Harry Potter and the Chamber of Secrets", author: "J. K. Rowling", rating: 4.2))
bookCollection.add(Book(title: "Harry Potter and the Prisoner of Azkaban", author: "J. K. Rowling", rating: 4.7))
bookCollection.add(Book(title: "Harry Potter and the Goblet of Fire", author: "J. K. Rowling", rating: 5.0))
bookCollection.add(Book(title: "Harry Potter and the Order of the Pheonix", author: "J. K. Rowling", rating: 3.5))
bookCollection.add(Book(title: "Harry Potter and the Half Blood Prince", author: "J. K. Rowling", rating: 4.75))
bookCollection.add(Book(title: "Harry Potter and the Deathly Hollows", author: "J. K. Rowling", rating: 4.95))
printTable(bookCollection)
