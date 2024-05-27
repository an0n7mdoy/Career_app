//
//  PersonalView.swift
//  CAS_1
//
//  Created by Simonchik on 14.05.2024.
//

import SwiftUI

struct PersonalView: View {
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
//unis
            ZStack {
                Rectangle()
                    .frame(width: 300.0, height:45.0)
                    .cornerRadius(15)
                    .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 40.0, height: 30.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.702, green: 0.718, blue: 0.725))
                        
                        Image("")
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 230.0, height: 30.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.702, green: 0.718, blue: 0.725))
                        
                        Text("Desired universities")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    
                }
                
            }
                
            }
            Spacer()
//goals
            HStack{
                
                VStack{
                   
                    HStack{
                        //"goals"
                        ZStack{
                            Rectangle()
                                .frame(width: 100.0, height: 45.0)
                                .cornerRadius(15)
                                .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                            
                            Text("Goals")
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                        //prog
                        ZStack{
                            Rectangle()
                                
                                .frame(width: 190.0, height: 45.0)
                                .cornerRadius(15)
                                .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                            
                            HStack{
                                Rectangle()
                                    .padding(.trailing, 65.0)
                                    .frame(width: 180.0, height: 35.0)
                                    .cornerRadius(13)
                                    .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                                
                            }
                        }
                       
                        
                    }
                    
                    //list
                    ZStack{
                        Rectangle()
                            .frame(width: 300.0, height: 240.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                        
                        HStack{
                            
                            VStack{
                                
                                HStack{
                                    Rectangle()
                                        .frame(width: 30.0, height: 30.0)
                                        .cornerRadius(30)
                                        .foregroundColor(.init(red: 0.671, green: 0.721, blue: 0.765))
                                }
                                
                            }
                    
                        }

                    }
                        
                    Spacer()
                }
                
                VStack{
                    
                }
                
               
            }
        }
    }


#Preview {
    PersonalView()
}
