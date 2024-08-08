//
//  A_testView.swift
//  Career_app
//
//  Created by настя п. on 24/07/2024.
//

import SwiftUI

struct A_testView: View {
    
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
                            Text("Do you like creating art, music, or writing?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                Text("\(settings.A)")
                                
                                Button("Yes"){
                                    settings.A += 2
                                    //settings.a1.toggle()
                                    settings.a1y.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.a1y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                               // .disabled(settings.a1)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.A += 1
                                   // settings.a1.toggle()
                                    settings.a1m.toggle()
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.a1m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                               // .disabled(settings.a1)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    //settings.a1.toggle()
                                    settings.a1n.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.a1n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                //.disabled(settings.a1)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Do you enjoy expressing yourself through creative activities?")
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
                            
                            Text("Are you interested in attending cultural events such as art exhibits, concerts, or theater performances?")
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
                            
                            Text("Do you prefer unstructured and innovative work environments?")
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
                            
                            Text("Do you enjoy experimenting with new ideas and creative projects?")
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
                                
                                Text("3/8")
                                  .font(Font.custom("Livvic", size: 18))
                                  .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                            }
                            
                            ZStack{
                               
                                Rectangle()
                                    .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                    .frame(width: 64, height: 37)
                                    .cornerRadius(15)
                                
                                NavigationLink(destination: S_testView()){
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
    A_testView()
}
