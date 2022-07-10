//
//  PlantList.swift
//  Planttr
//
//  Created by Necati Bozkurt on 7.07.2022.
//

import SwiftUI

struct PlantList: View {
    
    var plants : [Plants]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 40) {
                ForEach(plants) { plant in
                    NavigationLink(destination: PlantView(plants: plant)) {
                        PlantCard(plants: plant)
                    }
                }
            }
        }
        
    }
}

struct PlantList_Previews: PreviewProvider {
    static var previews: some View {
        PlantList(plants: Plants.sampleData)
    }
}
