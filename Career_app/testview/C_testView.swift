//
//  C_testView.swift
//  Career_app
//
//  Created by настя п. on 24/07/2024.
//

import SwiftUI

struct C_testView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var settings = GlobalSettings.shared
    var body: some View {
        NavigationStack{
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
                          .frame(width: 364, height: 460)
                          .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                          .cornerRadius(8)
                        
                        VStack  {
                            Text("Do you like organizing data and managing information?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                Text("\(settings.C)")
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    
                                    Button("Yes"){
                                        settings.C += 2
                                        
                                    }
                                    .font(Font.custom("Livvic", size: 18))
                                    .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                }
                                
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 76, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Maybe")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("No")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Are you interested in working with numbers, records, or documents?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Yes")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 76, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Maybe")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                }
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("No")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Do you prefer structured tasks and clear instructions?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                               
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Yes")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 76, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Maybe")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                }
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("No")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Do you enjoy tasks that involve attention to detail and accuracy?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Yes")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 76, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Maybe")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                }
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("No")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Are you interested in administrative or clerical work?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Yes")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 76, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("Maybe")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                }
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 46, height: 27)
                                        .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                        .cornerRadius(15)
                                    Text("No")
                                        .font(Font.custom("Livvic", size: 18))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                }
                                
                                Spacer()
                                Spacer()
                                
                            }
                        }
                    }
                        
                    HStack {
                        ZStack{
                           
                            Rectangle()
                                .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                .frame(width: 64, height: 37)
                                .cornerRadius(15)
                            
                            Button {
                                presentationMode.wrappedValue.dismiss()
                            } label: {
                                Image(systemName: "arrow.left")
                            }
                            .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                            .font(.system(size: 30))
                                     
                        
                    }
                            Spacer()
                            
                            ZStack{
                                
                                Rectangle()
                                  .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                  .frame(width: 64, height: 37)
                                  .cornerRadius(15)
                                
                                Text("6/8")
                                  .font(Font.custom("Livvic", size: 18))
                                  .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                            }
                            
                            ZStack{
                               
                                Rectangle()
                                    .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                    .frame(width: 64, height: 37)
                                    .cornerRadius(15)
                                
                                NavigationLink(destination: resultView()){
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                                        .font(.system(size: 30))
                                }
                                         
                            
                        }
                    }
                    .frame(width: 364)
                    
                }
            }
        }
        .navigationBarHidden(true)
    }
}
#Preview {
    C_testView()
}
