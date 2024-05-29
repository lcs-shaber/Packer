//
//  Calendar.swift
//  Packer
//
//  Created by Sophie Haber on 29.05.24.
//

import Foundation

struct  Calendar: Identifiable {
    let id = UUID()
    let reminders1: String
    let rectangleColour1: Color
    let textColor1: Color
    let reminders2: String
    let rectangleColour2: Color
    let textColor2: Color
}
    
let monday = Calendar (
    reminders1: "f",
    rectangleColour1: .gray,
    textColor1: .black,
    //complete the list
)

let tuesday = Calendar (
    reminders: "f",
    rectangleColour: .white,
    textColor: .black
)

let wednesday = Calendar (
    reminders: "f",
    rectangleColour: .gray,
    textColor: .black
)

let thurday = Calendar (
    reminders: "f",
    rectangleColour: .white,
    textColor: .black
)

let friday = Calendar (
    reminders: "f",
    rectangleColour: .gray,
    textColor: .black
)

let saturday = Calendar (
    reminders: "f",
    rectangleColour: .white,
    textColor: .black
)

let sunday = Calendar (
    reminders: "f",
    rectangleColour: .white,
    textColor: .black
)

let allDays = [
    monday,
    tuesday,
    wednesday,
    thurday,
    friday,
    saturday,
    sunday
]
