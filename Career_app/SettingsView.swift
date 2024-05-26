//
//  SettingsView.swift
//  CAS_1
//
//  Created by Simonchik on 15.05.2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var isButtonPressed1 = false
    @State private var isButtonPressed2 = false
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
            
            HStack{
                
                VStack{
                  
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 70.0, height: 45.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                            
                        
                        Image(systemName:"arrow.backward")
                            .resizable()
                            .frame(width: 45.0, height: 30.0)
                            
                    }.position(CGPoint(x: 35.0, y: 23.0)) .frame(width: 70, height: 240)
                    

                }
                
                ZStack{
                    Rectangle()
                        .frame(width: 220.0, height: 240.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                    
                    HStack{
                        
                        VStack{
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 140.0, height: 25.0)
                                    .cornerRadius(10)
                                    .foregroundColor(.init(red: 0.702, green: 0.718, blue: 0.725))
                                
                                Text("Sound options")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    
                            }
                            
                            HStack{
                                VStack{
                                    Text("Music")
                                    Text("Sounds")
                                }
                                
                                VStack{
                                    
                                    Button(action: {
                                        isButtonPressed1.toggle() // Toggle the button state
                                    }) {
                                        Image(systemName: isButtonPressed1 ? "speaker.slash" : "speaker.wave.3")
                                            .foregroundColor(.black)
                                    }
                                    
                                    Rectangle()
                                        .frame(width: 10, height: 1)
                                        .foregroundColor(.clear)
                                    
                                    Button(action: {
                                        isButtonPressed2.toggle() // Toggle the button state
                                    }) {
                                        Image(systemName: isButtonPressed2 ? "speaker.slash" : "speaker.wave.3")
                                            .foregroundColor(.black)
                                    }
                                    
                                   
                                    
                                    
                                }
                               
                            }
                              
                        }
                        
                    }
                }
                
               
            }
            
            
        }
    }




#Preview {
    SettingsView()
}
