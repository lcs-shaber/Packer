//
//  PackingItem.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import Foundation

struct  PackingItem: Identifiable {
    let id = UUID()
    let weekDay: String
    let item: String
}

let monday2 = PackingItem (
    weekDay: "Monday:",
    item: "Call mom"
)

let tuesday2 = PackingItem (
    weekDay: "Tuesday:",
    item: "Call mom"
)

let wednesday2 = PackingItem (
    weekDay: "Wednesday:",
    item: "Call mom"
)

let thursday2 = PackingItem (
    weekDay: "Thursday:",
    item: "Call mom"
)

let friday2 = PackingItem (
    weekDay: "Friday:",
    item: "Call mom"
)

let saturday2 = PackingItem (
    weekDay: "Saturday:",
    item: "Call mom"
)

let sunday2 = PackingItem (
    weekDay: "Sunday:",
    item: "Call mom"
)

let allItems = [
    monday2,
    tuesday2,
    wednesday2,
    thursday2,
    friday2,
    saturday2,
    sunday2
]
