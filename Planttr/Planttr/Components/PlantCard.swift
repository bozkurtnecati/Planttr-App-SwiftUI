//
//  PlantCard.swift
//  Planttr
//
//  Created by Necati Bozkurt on 7.07.2022.
//

import SwiftUI

struct PlantCard: View {
    
    var plants : Plants
    
    var body: some View {
        VStack {
            Image(plants.image)
                .resizable()
                .frame(width: 127.0, height: 140.0)
                .aspectRatio(contentMode: .fit)
            HStack {
                Text(plants.name)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "heart")
                    .opacity(0.5)
            }
            Text("$\(plants.price)")
                .padding(.top,1)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.black)
                
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .frame(width: 154.0, height: 220.0)
        .shadow(color: .gray, radius: 1, x: 0, y: 0)
    }
}

struct PlantCard_Previews: PreviewProvider {
    static var previews: some View {
        PlantCard(plants: .sampleData[4])
    }
}
