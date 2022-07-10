//
//  HomeView.swift
//  Planttr
//
//  Created by Necati Bozkurt on 5.07.2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var search: String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 25.0) {
                ScrollView {
                    HStack {
                        Text("Discover")
                            .font(.title3).bold()
                        Spacer()
                        Image("user")
                            .frame(width: 37.0, height: 37.0)
                            .clipShape(Circle())
                            .padding(.trailing,10)
                    }
                    
                    HStack {
                        TextField("Search", text: $search)
                            .padding()
                            .background(Color.white)
                            .overlay(Image(systemName: "magnifyingglass").padding().zIndex(1).background(Color.white) , alignment: .trailing)
                            .cornerRadius(30)
                            .padding(.horizontal,10)
                        
                        Label("", systemImage: "line.3.horizontal.decrease")
                            .font(.title2)
                    }

                    VStack {
                        PlantList(plants: Plants.sampleData)
                    }
                    .padding(.vertical,30)
                    
                }

            }
            .padding(.horizontal,20)
            .background(Color("backgroundColor"))
            .navigationBarHidden(true)


        }

    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
