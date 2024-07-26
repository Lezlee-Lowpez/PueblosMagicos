//
//  Pueblo.swift
//  PueblosMagicos
//
//  Created by Lesley Lopez on 7/24/24.
//

import Foundation

struct Pueblo: Identifiable, Decodable {
    
    let id:UUID = UUID()
    var name: String
    var about: String
    var mustDoActivities: [String]
    var imageName: String
}
