//
//  StateButton.swift
//  PueblosMagicos
//
//  Created by Lesley Lopez on 7/24/24.
//

import SwiftUI

struct StateButton: View {
    
    var buttonText: String
    
    var body: some View {
        
        ZStack{
            
            
            RoundedRectangle(cornerSize: CGSize(width:20, height:10))
                .frame(width: 360, height: 50)
                .foregroundStyle(.yellow)
                .opacity(0.5)
                
            
            Text(buttonText)
                
                
        }.bold()
        
        
    }
}

#Preview {
    StateButton(buttonText: "AguasCalientes")
}
