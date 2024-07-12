//
//  testquestionView.swift
//  Career_app
//
//  Created by настя п. on 11/07/2024.
//

import SwiftUI

struct testquestionView: View {
    var body: some View {
        ScrollView {
            VStack {
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
                      .frame(width: 364, height: 416)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(8)
                    
                    
                    
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.bottom, 272)
                      .padding(.trailing, 146.0)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.bottom, 272)
                      .padding(.leading, 67.0)
                    
                    
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.bottom, 136)
                      .padding(.trailing, 146.0)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.bottom, 136)
                      .padding(.leading, 67.0)
                    
                    
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.trailing, 146.0)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.leading, 67.0)
                   
                   
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.top, 136)
                      .padding(.trailing, 146.0)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.top, 136)
                      .padding(.leading, 67.0)
                    
                    
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.top, 272)
                      .padding(.trailing, 146.0)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 27, height: 46)
                      .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                      .cornerRadius(15)
                      .rotationEffect(Angle(degrees: -90))
                      .padding(.top, 272)
                      .padding(.leading, 67.0)
                    
                    
                    VStack  {
                        Spacer ()
                        Text("Do you enjoy working with tools and machinery?\n                     Yes                    No\nDo you like outdoor activities and working with your hands?\n                     Yes                    No\nAre you interested in fixing or repairing things?\n                     Yes                    No\nDo you enjoy physical activities and sports?\n                     Yes                    No\nDo you prefer practical tasks over theoretical ones?\n                     Yes                    No")
                            .font(Font.custom("Livvic", size: 18))
                            .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                            .frame(width: 343, height: 401, alignment: .topLeading)
                    }
                }
                    VStack {
                       
                        ZStack {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 37.67037, height: 64)
                              .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                              .cornerRadius(15)
                              .rotationEffect(Angle(degrees: -90))
                              .padding(.leading, 140.0)
                            
                            Text("1/8")
                              .font(Font.custom("Livvic", size: 18))
                              .padding(.leading, 140.0)
                              .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 37.67037, height: 64)
                                .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                .cornerRadius(15)
                                .rotationEffect(Angle(degrees: -90))
                                .padding(.leading, 300.0)
                            
                                 Image(systemName: "arrow.right")
                                     .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                                     .padding(.leading, 300.0)
                                     .font(.system(size: 30))
                                     
                        
                    }
                }
            }
        }
    }
}

#Preview {
    testquestionView()
}
