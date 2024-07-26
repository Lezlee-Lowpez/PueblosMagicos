//
//  ContentView.swift
//  PueblosMagicos
//
//  Created by Lesley Lopez on 7/22/24.
//

import SwiftUI

struct MainView: View {
    
    @State var states: [MexicoState] = []
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                    
                StateCard(states: states)
            }
        }
       .onAppear{
            states = dataService.getData()
           print(states)
        }
    }
}

#Preview {
    MainView()
}
