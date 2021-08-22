import UIKit

// Developer - абстракция
protocol Developer {
    // Открытый интерфейс с доступными методами
    // Каждому Developer мы можем дать задачу:
    func make(program: String) -> String
}

class SwiftDeveloper: Developer {
    // SwiftDeveloper подписан на протокол Developer, поэтому
    // его открытый интерфейс это метод makeProgramm
    func make(program: String) -> String {
        return ""
    }

    // И никто не знает, что ищут в Google
    private func searchInGoogle(task: String) -> String {
        return ""
    }
}
