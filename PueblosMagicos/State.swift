//
//  State.swift
//  PueblosMagicos
//
//  Created by Lesley Lopez on 7/24/24.
//

import Foundation

struct MexicoState: Identifiable, Decodable {
    
    let id:UUID = UUID()
    var name: String
    var pueblosMagicos: [Pueblo]
    
}
