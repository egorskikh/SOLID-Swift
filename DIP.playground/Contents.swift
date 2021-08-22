import UIKit
import CoreData

class NotUser {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class CoreData {
    func save(user: User) {
        // Save user on database
    }
}

class NotUserService {
    func save(user: User) {
        let database = CoreData()
        database.save(user: user)
    }
}

/*
 Создание экземпляра класса, как мы это сделали в примере, генерирует сильную связь, поэтому,
 если мы хотим использовать другую базу данных, нам придется переделать код.

 Чтобы решить эту проблему, мы можем сделать то, что объяснялось в предыдущей статье,
 когда был установлен уровень базы данных.
 */

// Решаем проблему

protocol Storable { }

extension NSObject: Storable { } // Realm Database
extension NSManagedObject: Storable { } // Core Data Database

protocol StorageManager {
  /// Save Object into Realm database
  /// - Parameter object: Realm object (as Storable)
  func save(object: Storable)
}

class User: Storable {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class UserService: StorageManager {
    func save(object: Storable) {
        // Saves user to database
    }
}
