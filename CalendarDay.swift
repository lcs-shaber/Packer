//
//  CalendarDay.swift
//  Packer
//
//  Created by Sophie Haber on 31.05.24.
//

import Foundation

struct  CalendarDay: Identifiable {
    let id = UUID()
    let dayName: String
    let event: String
}

let monday3 = CalendarDay (
    dayName: "Monday",
    event: "Add an event"
)

let tuesday3 = CalendarDay (
    dayName: "Tuesday",
    event: "Add an event"
)

let wednesday3 = CalendarDay (
    dayName: "Wednesday",
    event: "Add an event"
)

let thursday3 = CalendarDay (
    dayName: "Thursday",
    event: "Add an event"
)

let friday3 = CalendarDay (
    dayName: "Friday",
    event: "Add an event"
)

let saturday3 = CalendarDay (
    dayName: "Saturday",
    event: "Add an event"
)

let sunday3 = CalendarDay (
    dayName: "Sunday",
    event: "Add an event"
)


