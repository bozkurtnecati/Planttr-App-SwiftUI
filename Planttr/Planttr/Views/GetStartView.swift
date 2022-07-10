//
//  GetStartView.swift
//  Planttr
//
//  Created by Necati Bozkurt on 5.07.2022.
//

import SwiftUI

struct GetStartView: View {
    @State private var willMoveToNextScreen = false
    var body: some View {
        NavigationView{
            ZStack(){
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                Rectangle()
                    .fill(.black)
                    .ignoresSafeArea()
                    .opacity(0.4)
                            
                VStack(spacing: 50.0){
                    Spacer()
                    VStack(alignment: .leading, spacing: 25.0) {
                        Text("Go the Green way")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        .fontWeight(.bold)
                        
                        Text("Beauty blooms in the heart as well as garden")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: 260.0)
                    }
                    
                    NavigationLink {
                       TabBar()
                    } label: {
                        Text("Get Started")
                            .foregroundColor(.white)
                            .frame(width: 251.0, height: 48.0)
                            .background(RoundedRectangle(cornerRadius: 12).opacity(0.5))
                            .tint(.gray)
                            .shadow(color: .black, radius: 10, x: 0, y: 1)
                    }
                    .padding()
                }
                .padding(.bottom, 100)
               
                     
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
        }
        
            
    }
}

struct GetStartView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartView()
    }
}
