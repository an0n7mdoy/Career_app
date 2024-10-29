//
//  DevView.swift
//  CAS_1
//
//  Created by Simonchik on 15.05.2024.
//

import SwiftUI

struct DevView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        List{
            VStack {
                /*
                 Rectangle()
                 .frame(width: 350.0, height: 240.0)
                 .cornerRadius(15)
                 .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                 */
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
                            .font(Font.custom("Livvic-Regular", size: 25))
                        
                    }
                }
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                        .frame(width: 350)
                        .cornerRadius(15)
                                        

                    
                    Text("Hello! \nWe, developers of this application that we really hope you like, are 11th grade students of an International Baccalaureate Diploma Program. Our names are Anastasia and Simon, and both of us want to major in computer science. This application was our first serious project and it will help you learn about different professions, assesses your skills and interests, find the right education and career path.  We have collected information for you about the most popular and in-demand specialties, and also provide an opportunity to take the test to determine your professional destination. We have tried to make our application as convenient and accessible as possible for everyone who is facing the choice of profession. We hope that our app will help you find your way to a successful and satisfying career. Thank you for choosing us! \nFeel free to contact us: appforstudents@mail.ru")
                        .frame(width: 310)
                        .font(Font.custom("Livvic-Regular", size: 17))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                          
                    
                }
                
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 90.0, height: 45.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrow.left")
                        }
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                    }
                    
                    Spacer()
                }.frame(width: 350)
            }
        }
        .frame(width: 450.0)
        .ignoresSafeArea()
        .scrollContentBackground(.hidden)
        .navigationBarHidden(true)
        
    }
}
    
#Preview {
    DevView()
}
