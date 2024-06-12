//
//  AddedInput.swift
//  Packer
//
//  Created by Sophie Haber on 12.06.24.
//

import Foundation

struct AddedInput: Identifiable {
    
    let id = UUID()
    let event: String
}

let art = AddedInput (event: "art")

let computerScience = AddedInput (event: "computer science")

let spanish = AddedInput (event: "spanish")

let exampleEvents = [
    
    art,
    computerScience,
    spanish
]
