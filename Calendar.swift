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
    let reminders1: String
    let rectangleColour1: Color
    let textColor1: Color
    let reminders2: String
    let rectangleColour2: Color
    let textColor2: Color
}
    
let monday = Calendar (
    reminders1: "Monday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "jj",
    rectangleColour2: Color.lightGray,
    textColor2: .black
)

let tuesday = Calendar (
    reminders1: "Tuesday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "jj",
    rectangleColour2: .white,
    textColor2: .black
)

let wednesday = Calendar (
    reminders1: "Wednesday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "jj",
    rectangleColour2: Color.lightGray,
    textColor2: .black
)

let thurday = Calendar (
    reminders1: "Thursday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "jj",
    rectangleColour2: .white,
    textColor2: .black
)

let friday = Calendar (
    reminders1: "Friday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "jj",
    rectangleColour2: Color.lightGray,
    textColor2: .black
)

let saturday = Calendar (
    reminders1: "Saturday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "jj",
    rectangleColour2: .white,
    textColor2: .black
)

let sunday = Calendar (
    reminders1: "Sunday",
    rectangleColour1: Color.lightPurple,
    textColor1: .white,
    reminders2: "jj",
    rectangleColour2: Color.lightGray,
    textColor2: .black
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
