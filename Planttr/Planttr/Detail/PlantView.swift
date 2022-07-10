//
//  PlantView.swift
//  Planttr
//
//  Created by Necati Bozkurt on 10.07.2022.
//

import SwiftUI

struct PlantView: View {
    
    var plants : Plants
    
    @State var number : Int = 1
    
    var body: some View {
            VStack {
                Image(plants.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(edges: .top)
                    .frame(minHeight: 400.0)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 144, height: 8, alignment: .center)
                    .zIndex(2)
                    .foregroundColor(.gray)
                    .opacity(0.2)
                    .offset(y:-15)
                   
                
                VStack(alignment: .leading, spacing: 20.0) {
                    Text(plants.name)
                        .font(.title2).bold()
                    Text("$\(plants.price)")
                        .font(.title2).bold()
                        .foregroundColor(Color("costumGreen"))
                    Text(plants.detail)
                        .font(.callout)
                        .opacity(0.6)
                    
                    HStack{
                        Button {
                            number -= 1
                            if number < 0 {
                                number = 0
                            }
                        } label: {
                            Image(systemName: "minus")
                        }
                        .foregroundColor(.black)
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .cornerRadius(5)
                        .buttonStyle(.bordered)
                        
                        Text("\(number)")
                            .font(.title)
                            .frame(height: 20.0)
                            .padding(5)
                            
                        Button {
                            number += 1
                        } label: {
                            Image(systemName: "plus")
                        }
                        .foregroundColor(.white)
                        .frame(width: 50.0, height: 50.0)
                        .background(Color("costumGreen"))
                        .cornerRadius(5)
                        .buttonStyle(.bordered)
                        
                        Spacer()
                        
                        Button {
                            if number > 0 {
                                
                            }
                        } label: {
                            Text("Add to Card")
                        }
                        .buttonStyle(.bordered)
                        .foregroundColor(.white)
                        .frame(width:150.0, height: 50.0)
                        .background(Color("costumGreen"))
                        .cornerRadius(5)
      
                    }
                    
                }
                .padding(.horizontal,25)
                .padding(.top,50)
                .frame(minHeight:300)
                .background(Color.white.cornerRadius(50))
                .offset(y:-60)
                
               
                
            }
            .padding(.bottom,100)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                    }

                }
             }
       
    }
}

struct PlantView_Previews: PreviewProvider {
    static var previews: some View {
        PlantView(plants: .sampleData[5])
    }
}
