//
//  ContentView.swift
//  CAS_1
//
//  Created by Simonchik on 10.03.2024.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
       
        VStack {
           
            Spacer()
            Spacer()
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
//NAME
            ZStack {
                Rectangle()
                    .frame(width: 300.0, height: 70.0)
                    .cornerRadius(15)
                    .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                
                
                Text("Career Guidance Test")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            
            Spacer()
//pers
            HStack{
                ZStack {
                    Rectangle()
                        .frame(width: 70.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Image("person")
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 220.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Text("Personal account")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                }
            }
            
            Spacer()
//settings
            HStack{
                ZStack {
                    Rectangle()
                        .frame(width: 70.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Image("Group")
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 220.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Text("Settings")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                }
            }
            
            Spacer()
//about devs
            HStack{
                ZStack {
                    Rectangle()
                        .frame(width: 70.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Image("devices")
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 220.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Text("About developers")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                }
            }
        }
    }
}

#Preview {
    MainScreenView()
}
