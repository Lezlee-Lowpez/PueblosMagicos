//
//  StateCard.swift
//  PueblosMagicos
//
//  Created by Lesley Lopez on 7/23/24.
//

import SwiftUI

struct StateCard: View {
    
    var states: [MexicoState]
    
    var body: some View {
        
        VStack(alignment:.leading){
            
            Text("Estados de Mexico")
                .bold()
                .font(.largeTitle)
                .padding(.leading)
            
            ForEach(states){state in
                NavigationLink(destination: PueblosCard(state: state)) 
                {
                    StateButton(buttonText: state.name)
                        
                        
                }
            }
            
            Spacer()
            
            
        }
    }
}

#Preview {
    StateCard(states: [MexicoState(name:"Aguascalientes",
                                   pueblosMagicos: [Pueblo(name: "Calvillo", about: "Something super interesting!", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Calvillo"),
                                     Pueblo(name: "Pabellon de Hidalgo", about: "Something else interesting", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Pabellon de Hidalgo"),
                                     Pueblo(name: "Real de Asientos", about: "No more intersting things here", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Real de Asientos"),
                                     Pueblo(name: "San Jose de Gracia", about: "What do i say here", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "San Jose de Gracia")]),
                       MexicoState(name:"Guanajuato",
                                   pueblosMagicos: [Pueblo(name: "Calvillo", about: "Something super interesting!", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Calvillo"),
                                                        Pueblo(name: "Pabellon de Hidalgo", about: "Something else interesting", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Pabellon de Hidalgo"),
                                                        Pueblo(name: "Real de Asientos", about: "No more intersting things here", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Real de Asientos"),
                                                        Pueblo(name: "San Jose de Gracia", about: "What do i say here", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "San Jose de Gracia")]),
                       MexicoState(name:"Chiapas",
                                   pueblosMagicos: [Pueblo(name: "Calvillo", about: "Something super interesting!", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Calvillo"),
                                                        Pueblo(name: "Pabellon de Hidalgo", about: "Something else interesting", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Pabellon de Hidalgo"),
                                                        Pueblo(name: "Real de Asientos", about: "No more intersting things here", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Real de Asientos"),
                                                        Pueblo(name: "San Jose de Gracia", about: "What do i say here", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "San Jose de Gracia")]),
                       MexicoState(name:"Puebla",
                                   pueblosMagicos: [Pueblo(name: "Calvillo", about: "Something super interesting!", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Calvillo"),
                                                        Pueblo(name: "Pabellon de Hidalgo", about: "Something else interesting", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Pabellon de Hidalgo"),
                                                        Pueblo(name: "Real de Asientos", about: "No more intersting things here", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Real de Asientos"),
                                                        Pueblo(name: "San Jose de Gracia", about: "What do i say here", mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "San Jose de Gracia")]),])
    
}
