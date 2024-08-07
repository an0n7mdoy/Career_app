//
//  testquestionView.swift
//  Career_app
//
//  Created by настя п. on 11/07/2024.
//

import SwiftUI

struct R_testView: View {
 

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
                            Text("Do you enjoy working with tools and machinery?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 80.0)
                                .frame(width: 394)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                Text("\(settings.R)")
                                
                                Button("Yes"){
                                    settings.R += 2
                                    settings.r1.toggle()
                                    settings.r1y.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r1y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r1)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.R += 1
                                    settings.r1.toggle()
                                    settings.r1m.toggle()
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r1m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r1)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r1.toggle()
                                    settings.r1n.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r1n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r1)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                    
                                
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Do you like outdoor activities and working with your hands?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 74.0)
                                .frame(width: 394.0)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes"){
                                    settings.R += 2
                                    settings.r2.toggle()
                                    settings.r2y.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r2y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r2)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.R += 1
                                    settings.r2.toggle()
                                    settings.r2m.toggle()
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r2m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r2)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r2.toggle()
                                    settings.r2n.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r2n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r2)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Are you interested in fixing or repairing things?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .padding(.trailing, 105.0)
                                .frame(width: 394.0)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes"){
                                    settings.R += 2
                                    settings.r3.toggle()
                                    settings.r3y.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r3y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r3)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.R += 1
                                    settings.r3.toggle()
                                    settings.r3m.toggle()
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r3m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r3)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r3.toggle()
                                    settings.r3n.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r3n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r3)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Do you enjoy physical activities and \nsports?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .padding(.trailing, 50.0)
                                .frame(width: 394.0)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes"){
                                    settings.R += 2
                                    settings.r4.toggle()
                                    settings.r4y.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r4y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r4)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.R += 1
                                    settings.r4.toggle()
                                    settings.r4m.toggle()
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r4m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r4)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r4.toggle()
                                    settings.r4n.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r4n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r4)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                                
                            }
                            
                            Text("Do you prefer practical tasks over theoretical ones?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .padding(.trailing, 67.0)
                                .frame(width: 394)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes"){
                                    settings.R += 2
                                    settings.r5.toggle()
                                    settings.r5y.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r5y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r5)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.R += 1
                                    settings.r5.toggle()
                                    settings.r5m.toggle()
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r5m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r5)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r5.toggle()
                                    settings.r5n.toggle()
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r5n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .disabled(settings.r5)
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                                
                            }
                        }
                    }
                        
                    HStack {

                            Spacer()
                            
                            ZStack{
                                
                                Rectangle()
                                  .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                  .frame(width: 64, height: 37)
                                  .cornerRadius(15)
                                
                                Text("1/8")
                                  .font(Font.custom("Livvic", size: 18))
                                  .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                            }
                            
                            ZStack{
                               
                                Rectangle()
                                    .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                    .frame(width: 64, height: 37)
                                    .cornerRadius(15)
                                
                                NavigationLink(destination: I_testView()){
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
        
    }
}

#Preview {
    R_testView()
}
