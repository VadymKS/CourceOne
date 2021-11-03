//
//  main.swift
//  CoursOneHome
//
//  Created by Vadym Kovalenko on 26.10.2021.
//
//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.


import Foundation

struct TelevisionSet {
    let model: String
    let inch: Double
}

extension TelevisionSet {
    var options: String {
        return "Телевизор \(model) с диагональю \(inch)"
    }
}

struct Queue<T> {
    var items = [T]()
    
    mutating func elements(item: T) {
        items.append(item)
    }
    mutating func manufacturer() -> T {
        return items.removeLast()
    }
    func printTVOptions() {
        Swift.print(items) //Xcode потребовал добавить Swift.
    }
}

struct QueueOne<T> {
    var items = [T]()
    subscript(index: Int) -> T? {
        if index > items.count || index < 0 {
            return nil
        } else {
            return items[index]
        }
    }
}

func genericTV <T>(model: [T], inch: [T]) {
    for index in model {
        print(index)
    }
    for index in inch {
        print(index)
    }
}

//MARK Filter

let castomesTV = ["Samsung","Sony", "Panasonic", "LG", "Tosiba"]
let myTV = castomesTV.filter { $0.hasPrefix("S")}
print(myTV)

