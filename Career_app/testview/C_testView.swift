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
                                
                                Button("Yes") {
                                    settings.c1y = true
                                    settings.c1m = false
                                    settings.c1n = false
                                    settings.c1 = 2
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c1y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.c1y = false
                                    settings.c1m = true
                                    settings.c1n = false
                                    settings.c1 = 1
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.c1m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.c1y = false
                                    settings.c1m = false
                                    settings.c1n = true
                                    settings.c1 = 0
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c1n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
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
                                
                                
                                Button("Yes") {
                                    settings.c2y = true
                                    settings.c2m = false
                                    settings.c2n = false
                                    settings.c2 = 2
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c2y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.c2y = false
                                    settings.c2m = true
                                    settings.c2n = false
                                    settings.c2 = 1
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.c2m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.c2y = false
                                    settings.c2m = false
                                    settings.c2n = true
                                    settings.c2 = 0
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c2n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
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
                                
                                Button("Yes") {
                                    settings.c3y = true
                                    settings.c3m = false
                                    settings.c3n = false
                                    settings.c3 = 2
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c3y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.c3y = false
                                    settings.c3m = true
                                    settings.c3n = false
                                    settings.c3 = 1
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.c3m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.c3y = false
                                    settings.c3m = false
                                    settings.c3n = true
                                    settings.c3 = 0
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c3n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
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
                                
                                Button("Yes") {
                                    settings.c4y = true
                                    settings.c4m = false
                                    settings.c4n = false
                                    settings.c4 = 2
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c4y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.c4y = false
                                    settings.c4m = true
                                    settings.c4n = false
                                    settings.c4 = 1
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.c4m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.c4y = false
                                    settings.c4m = false
                                    settings.c4n = true
                                    settings.c4 = 0
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c4n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
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
                                
                                Button("Yes") {
                                    settings.c5y = true
                                    settings.c5m = false
                                    settings.c5n = false
                                    settings.c5 = 2
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c5y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.c5y = false
                                    settings.c5m = true
                                    settings.c5n = false
                                    settings.c5 = 1
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.c5m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.c5y = false
                                    settings.c5m = false
                                    settings.c5n = true
                                    settings.c5 = 0
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.c5n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
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
                .navigationBarHidden(true)
            }
        }
    }
}
#Preview {
    C_testView()
}
