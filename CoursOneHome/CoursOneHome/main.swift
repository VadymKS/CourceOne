//
//  main.swift
//  CoursOneHome
//
//  Created by Vadym Kovalenko on 26.10.2021.
//

import Foundation


enum CarType: String {
    case sportCar
    case trunkCar
}

enum CarName: String {
    case nameSprotCar
    case nameTrunkCar
}

enum WheelRadius: String {
    case sportWheel
    case trunkWheel
}

enum WindowStatus: String {
    case windowClose
    case windowOpen
}

enum EngineStatus: String {
    case engineOn
    case engineOff
}

enum DoorStatus: String {
    case doorClose
    case doorClous
}

enum CargoStatus: String {
    case empty
    case full
}

enum SpoileStatus: String {
    case up
    case dowh
}

protocol CarProtocol {
    var carType: CarType { get }
    var carName: CarName { get }
    var wheels: WheelRadius { get }
    var windows: WindowStatus { get set }
    var engine: EngineStatus { get set }
    var doorStatus: DoorStatus { get set }
    var carSpeed: Int { get }
    var carColor: String { get }
    var carWeigth: Int { get }
    var carLength: Int { get }
}

protocol CargoCarProtocol: CarProtocol {
    var cargo: CargoStatus { get set }
}

protocol SportCarProtocol: CarProtocol {
    var spoiler: SpoileStatus { get set }
}

extension CarProtocol {
    func carInfo() -> String {
        return ("\(carType) + модели \(carName) + с радиусом колес \(wheels) дюймов + окна сейчас \(windows), статус двигателя \(engine), все двери \(doorStatus), цвет машины \(carColor), общий вес машины \(carWeigth)")
    }
    
    mutating func statusWindow(_ status: WindowStatus) {
        windows = status
        print("Окна в \(carName) сейчас \(status)")
    }
    
    mutating func statusDoors(_ status: DoorStatus) {
        doorStatus = status
        print("Двери в \(carName) сейчас \(status)")
    }
    
    mutating func statusEngien(_ status: EngineStatus) {
        engine = status
        print("Двигатель в \(carName) сейчас \(status)")
    }
}

extension SportCarProtocol {
    func carInfo() -> String {
        return("Сейчас спойлек \(spoiler), окна сейчас \(windows), статус двигателя \(engine), все двери \(doorStatus)")
    }
    
    mutating func statusSpoiler(_ status: SpoileStatus) {
        spoiler = status
        print("Сейчас в \(carName) спойлек \(status)")
    }
}

extension CargoCarProtocol {
    func carInfo() -> String {
        return("Сейчас кузов \(cargo), окна сейчас \(windows), статус двигателя \(engine), все двери \(doorStatus)")
    }
    
    mutating func cargoStatus(_ status: CargoStatus) {
        cargo = status
        print("В \(carName) кузов \(status)")
    }
}

class SportCar: SportCarProtocol {
    var spoiler: SpoileStatus
    var carType: CarType
    var carName: CarName
    var wheels: WheelRadius
    var windows: WindowStatus
    var engine: EngineStatus
    var doorStatus: DoorStatus
    var carSpeed: Int
    var carColor: String
    var carWeigth: Int
    var carLength: Int
    
    init(
        spoiler: SpoileStatus,
        carType: CarType,
        carName: CarName,
        wheels: WheelRadius,
        windows: WindowStatus,
        engine: EngineStatus,
        doorStatus: DoorStatus,
        carSpeed: Int,
        carColor: String,
        carWeigth: Int,
        carLength: Int
    )
    {
        self.spoiler = spoiler
        self.carType = carType
        self.carName = carName
        self.wheels = wheels
        self.windows = windows
        self.engine = engine
        self.doorStatus = doorStatus
        self.carSpeed = carSpeed
        self.carColor = carColor
        self.carWeigth = carWeigth
        self.carLength = carLength
    }
}

class CargoCar: CargoCarProtocol {
    var cargo: CargoStatus
    var carType: CarType
    var carName: CarName
    var wheels: WheelRadius
    var windows: WindowStatus
    var engine: EngineStatus
    var doorStatus: DoorStatus
    var carSpeed: Int
    var carColor: String
    var carWeigth: Int
    var carLength: Int
    
    init(
        cargo: CargoStatus,
        carType: CarType,
        carName: CarName,
        wheels: WheelRadius,
        windows: WindowStatus,
        engine: EngineStatus,
        doorStatus: DoorStatus,
        carSpeed: Int,
        carColor: String,
        carWeigth: Int,
        carLength: Int
    ){
        self.cargo = cargo
        self.carType = carType
        self.carName = carName
        self.wheels = wheels
        self.windows = windows
        self.engine = engine
        self.doorStatus = doorStatus
        self.carSpeed = carSpeed
        self.carColor = carColor
        self.carWeigth = carWeigth
        self.carLength = carLength
    }
}

var nissan = SportCar(spoiler: .up, carType: .sportCar, carName: .nameSprotCar, wheels: .sportWheel, windows: .windowClose, engine: .engineOn, doorStatus: .doorClose, carSpeed: 220, carColor: "Red", carWeigth: 1220, carLength: 3200)

var volvo = CargoCar(cargo: .empty, carType: .trunkCar, carName: .nameTrunkCar, wheels: .trunkWheel, windows: .windowOpen, engine: .engineOn, doorStatus: .doorClose, carSpeed: 60, carColor: "Yelow", carWeigth: 3500, carLength: 5600)

