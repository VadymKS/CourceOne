//
//  main.swift
//  CoursOneHome
//
//  Created by Vadym Kovalenko on 26.10.2021.
//

import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

class SportCar {
    let maxSpeed: Int
    let color: String
    let engineVolume: Double
    var clearance: Int
    let engineLocation: String
    var currentSpeed: Int
    
    init(maxSpeed: Int, color: String, engineVolume: Double, clearance: Int, engineLocation: String, currentSpeed: Int){
        self.maxSpeed = maxSpeed
        self.color = color
        self.engineVolume = engineVolume
        self.clearance = clearance
        self.engineLocation = engineLocation
        self.currentSpeed = currentSpeed
    }
}
var sportCarProperty = SportCar(maxSpeed: 290, color: "Red", engineVolume: 5.2, clearance: 5, engineLocation: "Back", currentSpeed: 180)

class CargoСar {
    static let maxSpeed = 120
    static let color = "Yelow"
    static let engineVolume = 4.6
    static let clearance = 25
    static let engineLocation = "Front"
    static let currentSpeed = 60
}

enum SpeedChange: String {
    case acceleratorOn = "Пристегните ремни, мы полетели"
    case acceleratorOff = "Налетались, теперь притормози"
}

enum CargoChange: String {
    case cargoOut = "Выгружаем"
    case cargoIn = "Загружаем"
}

func speedUp(for speedValue: SpeedChange) {
    switch speedValue {
    case .acceleratorOn:
        print(speedValue.rawValue)
    case .acceleratorOff:
        print(speedValue.rawValue)
    }
}

func cargoInput(for cargoStatus: CargoChange) {
    switch cargoStatus {
    case .cargoOut:
        print(cargoStatus.rawValue)
    case .cargoIn:
        print(cargoStatus.rawValue)
    }
}

speedUp(for: .acceleratorOn)

cargoInput(for: .cargoOut)

