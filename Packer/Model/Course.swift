//
//  AddedInput.swift
//  Packer
//
//  Created by Sophie Haber on 12.06.24.
//

import Foundation

struct Course: Identifiable {
    
    let id = UUID()
    let name: String
    var thingsToBring: [Item] = []
    
    struct Item: Identifiable {
        let id = UUID()
        let name: String
    }
}

let art = Course (name: "art")

let computerScience = Course (name: "computer science")

let spanish = Course (name: "spanish")

let exampleCourses = [
    
    art,
    computerScience,
    spanish
]
