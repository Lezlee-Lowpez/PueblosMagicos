//
//  PueblosCard.swift
//  PueblosMagicos
//
//  Created by Lesley Lopez on 7/23/24.
//

import SwiftUI

struct PueblosCard: View {
    
    var state: MexicoState
    
    var body: some View {
        
        ScrollView{
            
            VStack{
                    Text("Pueblos Magicos")
                    .font(.title)
                    .bold()
                    
                    ForEach(state.pueblosMagicos){pueblo in
                        
                        NavigationLink(destination: DetailView(pueblo: pueblo))
                        {
                            
                            ZStack{
                                Image(pueblo.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                
                                Text(pueblo.name)
                                    .padding(5)
                                    .background(Color.white.opacity(0.5))
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                                    .foregroundStyle(Color.black)
                                    .bold()
                                    
                                
                            }
                        }
                    }
            }
            Spacer()
        }
    }
}

#Preview {
    PueblosCard(state: MexicoState(name: "Baja California", pueblosMagicos: [Pueblo(name: "Tecate", about: "something", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Tecate"), Pueblo(name: "Latina", about: "something", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Mineral de Pozos")]))
}
