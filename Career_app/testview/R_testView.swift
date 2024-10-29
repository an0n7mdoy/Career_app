//
//  testquestionView.swift
//  Career_app
//
//  Created by настя п. on 11/07/2024.
//

import SwiftUI

struct R_testView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var settings = GlobalSettings.shared
    
    @State private var warn = false
    @State private var exit = false
    
    @State private var check1 = false
    @State private var check2 = false
    @State private var check3 = false
    @State private var check4 = false
    @State private var check5 = false
    
    private func checkall() -> Bool {
        if check1 && check2 && check3 && check4 && check5 {
            return false
        } else{
            return true
        }
    }
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                VStack {
                    Image("anima")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                        .frame(width: 420, height: 200)
                        .offset(x: 20, y: 10)
                    
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
                                //Text("\(settings.checkR)")
                                
                                Button("Yes"){
                                    settings.r1y = true
                                    settings.r1m = false
                                    settings.r1n = false
                                    settings.r1 = 2
                                    check1 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r1y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.r1y = false
                                    settings.r1m = true
                                    settings.r1n = false
                                    settings.r1 = 1
                                    check1 = true
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r1m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r1y = false
                                    settings.r1m = false
                                    settings.r1n = true
                                    settings.r1 = 0
                                    check1 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r1n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
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
                                    settings.r2y = true
                                    settings.r2m = false
                                    settings.r2n = false
                                    settings.r2 = 2
                                    check2 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r2y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.r2y = false
                                    settings.r2m = true
                                    settings.r2n = false
                                    settings.r2 = 1
                                    check2 = true
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r2m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r2y = false
                                    settings.r2m = false
                                    settings.r2n = true
                                    settings.r2 = 0
                                    check2 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r2n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
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
                                    settings.r3y = true
                                    settings.r3m = false
                                    settings.r3n = false
                                    settings.r3 = 2
                                    check3 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r3y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.r3y = false
                                    settings.r3m = true
                                    settings.r3n = false
                                    settings.r3 = 1
                                    check3 = true
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r3m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r3y = false
                                    settings.r3m = false
                                    settings.r3n = true
                                    settings.r3 = 0
                                    check3 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r3n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
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
                                    settings.r4y = true
                                    settings.r4m = false
                                    settings.r4n = false
                                    settings.r4 = 2
                                    check4 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r4y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.r4y = false
                                    settings.r4m = true
                                    settings.r4n = false
                                    settings.r4 = 1
                                    check4 = true
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r4m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r4y = false
                                    settings.r4m = false
                                    settings.r4n = true
                                    settings.r4 = 0
                                    check4 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r4n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
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
                                    settings.r5y = true
                                    settings.r5m = false
                                    settings.r5n = false
                                    settings.r5 = 2
                                    check5 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r5y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.r5y = false
                                    settings.r5m = true
                                    settings.r5n = false
                                    settings.r5 = 1
                                    check5 = true
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.r5m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                
                                Button("No"){
                                    settings.r5y = false
                                    settings.r5m = false
                                    settings.r5n = true
                                    settings.r5 = 0
                                    check5 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.r5n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                                
                            }
                        }
                    }
                    
                    HStack {
                        
                            
                        Button("Exit Test"){
                            warn.toggle()
                        }
                        .frame(width: 90, height: 37)
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .font(Font.custom("Livvic", size: 21))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .alert("Are you sure?", isPresented: $warn) {
                            
                            Button("Exit" ,role: .destructive){
                                exit.toggle()
                            }
                            
                        } message: {
                            Text("If you exit the test now your answers will be lost when you close the app. To save your results please finish the test.")
                        }
                        
                        
                        
                        Spacer()
                        
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                .frame(width: 64, height: 37)
                                .cornerRadius(15)
                            
                            Text("1/8")
                                .font(Font.custom("Livvic", size: 21))
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
                                }.simultaneousGesture(TapGesture().onEnded{
                                    if !settings.checkR1 && !checkall() {
                                        settings.checkR = checkall()
                                        settings.checkR1 = true
                                    } else {
                                        
                                    }
                                })
                                

                            }
                            
                        }
                    }.navigationDestination(isPresented: $exit) {
                        MainScreenView()  // Your destination view
                    }
                    .frame(width: 364)
                    
                }
            }
        .navigationBarHidden(true)
    }
}

#Preview {
    R_testView()
}
