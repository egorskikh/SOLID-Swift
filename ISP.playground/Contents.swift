import UIKit

// MARK: - 👎🏻 SOLID - SRP

// Интерфейс типичного программиста
protocol TypicalProgrammist {
    func reinstallWindows()
    func phoneRepair()
    func makeWebsite()
    func configure1C()
    func makeApp()
}

class IosDeveloper: TypicalProgrammist {
    func reinstallWindows() {
        // Знаю, но в работе не использую
    }

    func phoneRepair() {
        // Тоже умею, но не использую
    }

    func makeWebsite() {
        // Знаю, но не использую
    }

    func configure1C() {
        // Умею, но в работе не нужно
    }

    func makeApp() {
        // Это моя работа
        let greatApp = "My great app"
    }
}

// MARK: - 👍🏻 SOLID - SRP

// Интерфейс сервисного специалиста
protocol ServiceSpecialist {
    func reinstallWindows()
    func phoneRepair()
}

class ServiceSpecialistImpl: ServiceSpecialist {
    func reinstallWindows() {
        let os = "Widnows"
    }

    func phoneRepair() {
        let iPhoneSE = "IPhone"
    }
}

// Интерфейс iOS разработчика
protocol IosDeveloperType {
    func makeApp()
}

class IosDeveloperImpl: IosDeveloperType {
    func makeApp() {
        let greatApp = "My great app"
    }
}
