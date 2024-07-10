//
//  testView.swift
//  Career_app
//
//  Created by настя п. on 10/07/2024.
//

import SwiftUI

struct testView: View {
    var body: some View {
        NavigationView{
            VStack {
           
                Spacer()
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
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
            }
                ZStack {
                    Rectangle()
                        
                        .foregroundColor(.clear)
                        .frame(width: 364, height: 120)
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                        .cornerRadius(8)
                        .padding(.bottom, 10.0)
                    
                    Text("You need to answer following questions carefully. Think about your answers. For this test you need about 10-20 minutes.")
                        .font(Font.custom("Mina-Regular", size: 18))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .frame(width: 352, height: 100, alignment: .topLeading)
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 191, height: 31)
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                        .cornerRadius(8)
                    
                    Text("Start")
                        .font(Font.custom("Mina", size: 20))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .frame(width: 55, height: 31, alignment: .topLeading)
                }
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
                Spacer()

            }
        }
    }
}


#Preview {
    testView()
}
