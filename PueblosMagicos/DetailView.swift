//
//  DetailView.swift
//  PueblosMagicos
//
//  Created by Lesley Lopez on 7/23/24.
//

import SwiftUI

struct DetailView: View {
    
    var pueblo: Pueblo
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment:.leading){
                
                Text(pueblo.name)
                    .bold()
                    .font(.title)
                
                Image(pueblo.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding(.vertical, 10)
                
                
                
                Text("About")
                    .bold()
                    .font(.headline)
                    .padding(.bottom)
                
                Text(pueblo.about)
                
                Text("Must Do Activities")
                    .bold()
                    .font(.headline)
                    .padding(.bottom)
                    .padding(.top)
                
                ForEach(pueblo.mustDoActivities, id: \.self){activity in
                    Text(activity)
                    
                }
                
                
                
            }.padding()
            
            Spacer()
            
        }
    }
}

#Preview {
    DetailView(pueblo: Pueblo(name: "Mineral de Pozos", about: "Something interesting about this place!",mustDoActivities: ["look something to do!", "look another thing to do!", "okay no more things to do"], imageName: "Mineral de Pozos"))
}
