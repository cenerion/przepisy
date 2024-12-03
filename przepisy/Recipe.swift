//
//  przepisy.swift
//  przepisy
//
//  Created by stud on 03/12/2024.
//

import Foundation
import SwiftUI


struct Recipe: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var rating: Float
    
    var ingridients: [Ingridient]

    private var imagesNames: [String]
    var images: [Image] {
        imagesNames.map{ Image($0) }
    }
    
    var comments: [Comment]

}


struct Ingridient: Hashable, Codable {
    var name: String
    var quantity: Int
}

struct Comment: Hashable, Codable {
    var username: String
    var content: String
    var date: Date
}
