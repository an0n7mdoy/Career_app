//
//  testView.swift
//  Career_app
//
//  Created by настя п. on 10/07/2024.
//

import SwiftUI

struct testView: View {
    var body: some View {
        NavigationStack{
            VStack {
           
                Spacer()
                Spacer()
                Spacer()
              
            
                
//NAME
                ZStack {
                    Rectangle()
                        .frame(width: 300.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                    
                    
                    Text("Career Guidance Test")
                        .font(Font.custom("Livvic-Regular", size: 29))
                        .lineLimit(0)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.54, green: 0.57, blue: 0.58))
                  
                    
                }
             
               
                
                ZStack {
                    Rectangle()
                        
                        .foregroundColor(.clear)
                        .frame(width: 364, height: 120)
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                        .cornerRadius(8)
                        .padding(.bottom, 7.0)
                    
                    Text("You need to answer following questions carefully. Think about your answers. For this test you need about 10-20 minutes.")
                        .font(Font.custom("Livvic-Regular", size: 19))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .frame(width: 352, height: 100, alignment: .topLeading)
                }
                
              
                ZStack {
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 191, height: 31)
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                        .cornerRadius(8)
                        .padding(.bottom,7.0)
                    
                    
                    
                    NavigationLink(destination: R_testView()){
                        Text("Start")
                            .font(Font.custom("Livvic-Regular", size: 20))
                            .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                            .frame(width: 55, height: 31, alignment: .topLeading)
                        }
                    
                   
                    }
                Spacer()
                Spacer()
                Spacer()
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 450, height: 305)
                .background(
                Image("1 экран")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 450, height: 305)
                .clipped()
                )
    

            }
        }
    }
}


#Preview {
    testView()
}
