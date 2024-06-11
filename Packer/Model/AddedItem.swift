//
//  AddedItem.swift
//  Packer
//
//  Created by Sophie Haber on 11.06.24.
//

import Foundation

struct AddedItem: Identifiable {
    
    let id = UUID()
    let object: String
}

let object1 = AddedItem (object: "ruler")

let object2 = AddedItem (object: "water")

let object3 = AddedItem (object: "pencil")

let exampleObjects = [
    
    object1,
    object2,
    object3
]

