import UIKit

// 1. Определим протокол для всего, чем можно рисовать.
protocol Drawing {
    var color: UIColor { get }
}

// 2. Определим подклассы.
// Класс Ручки.
class Pen: Drawing {
    var color: UIColor

    init(color: UIColor) {
        self.color = color
    }
}

// Класс Карандаша.
class Pencil: Drawing {
    var color: UIColor

    init(color: UIColor) {
        self.color = color
    }
}

// 3. Класс Ребенка, который может рисовать всем, что может рисовать.
class Child {
    func drawHouse(with item: Drawing) {
        print("House color: ", item.color)
    }
}

// Экземпляры классов: Карандаша, Ручки и Ребенка.
let bluePen = Pen(color: .blue)
let blackPencil = Pencil(color: .black)
let bob = Child()

// Проверим, что Ребенок Боб может рисовать и ручками и карандашами
bob.drawHouse(with: bluePen)        // House color: blue
bob.drawHouse(with: blackPencil)    // House color: black
