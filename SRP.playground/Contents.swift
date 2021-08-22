import UIKit

// MARK: - 👎🏻 SOLID - SRP

class BadDeveloper {

    var programms: [AnyHashable]?

    func write(_ programm: String) {
        // ...
    }

    func test(_ programm: String) {
        // ...
    }

}

// MARK: - 👍🏻 SOLID - SRP

class QA {

    func test(programm: String) {
        // ...
    }

}

class Developer {

    var programms: [AnyHashable]?

    func write(programm: String) {
        // ...
    }

}
