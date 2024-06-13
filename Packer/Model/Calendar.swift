//
//  Calendar.swift
//  Packer
//
//  Created by Sophie Haber on 29.05.24.
//

import Foundation
import SwiftUI

struct  Calendar: Identifiable {
    let id = UUID()
    let dayName: String
    let rectangleColour1: Color
    let textColor1: Color
    let reminders2: String
    let reminders: String
    let rectangleColour2: Color
    let textColor2: Color
    let object: String
    let event: String
}
    
let monday = Calendar (
    dayName: "Monday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "Add a packing Item",
    reminders: "Add an event",
    rectangleColour2: Color.lightGray,
    textColor2: .black,
    object: "ruler",
    event: "art"
)

let tuesday = Calendar (
    dayName: "Tuesday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "Add a packing Item",
    reminders: "kk",
    rectangleColour2: .white,
    textColor2: .black,
    object: "paper",
    event: "econ"
)

let wednesday = Calendar (
    dayName: "Wednesday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "Add a packing Item",
    reminders: "kk",
    rectangleColour2: Color.lightGray,
    textColor2: .black,
    object: "computer",
    event: "computer science"
)

let thurday = Calendar (
    dayName: "Thursday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "Add a packing Item",
    reminders: "kk",
    rectangleColour2: .white,
    textColor2: .black,
    object: "book",
    event: "spanish"
)

let friday = Calendar (
    dayName: "Friday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "Add a packing Item",
    reminders: "kk",
    rectangleColour2: Color.lightGray,
    textColor2: .black,
    object: "charger",
    event: "computer science"
)

let saturday = Calendar (
    dayName: "Saturday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "Add a packing Item",
    reminders: "kk",
    rectangleColour2: .white,
    textColor2: .black,
    object: "notebook",
    event: "econ"
)

let sunday = Calendar (
    dayName: "Sunday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "Add a packing Item",
    reminders: "kk",
    rectangleColour2: Color.lightGray,
    textColor2: .black,
    object: "paint",
    event: "art"
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
