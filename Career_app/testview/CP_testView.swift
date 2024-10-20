//
//  CP_testView.swift
//  Career_app
//
//  Created by Simonchik on 19.10.2024.
//

import SwiftUI

struct CP_testView: View {
    
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
            ScrollView {
                VStack {
                    Image("anima")
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 240)
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
                            Text("Do you feel confident about your skills and abilities for future employment?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                Text("\(settings.checkCP)")
                                
                                Button("Yes") {
                                    settings.cp1y = true
                                    settings.cp1m = false
                                    settings.cp1n = false
                                    settings.cp1 = 2
                                    check1 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp1y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .offset(x: -8)
                                
                                Spacer()
                                
                                
                                Button("Maybe"){
                                    settings.cp1y = false
                                    settings.cp1m = true
                                    settings.cp1n = false
                                    settings.cp1 = 1
                                    check1 = true
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.cp1m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                               
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.cp1y = false
                                    settings.cp1m = false
                                    settings.cp1n = true
                                    settings.cp1 = 0
                                    check1 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp1n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .offset(x: 8)
                                
                                Spacer()
                                Spacer()
                            }
                            
                            Text("Have you started planning your career path?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                
                                Button("Yes") {
                                    settings.cp2y = true
                                    settings.cp2m = false
                                    settings.cp2n = false
                                    settings.cp2 = 2
                                    check2 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp2y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Somewhat"){
                                    settings.cp2y = false
                                    settings.cp2m = true
                                    settings.cp2n = false
                                    settings.cp2 = 1
                                    check2 = true
                                }
                                .frame(width: 100, height: 27)
                                .background(settings.cp2m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.cp2y = false
                                    settings.cp2m = false
                                    settings.cp2n = true
                                    settings.cp2 = 0
                                    check2 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp2n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                            }
                            
                            Text("Do you know which careers align with your interests and strengths?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes") {
                                    settings.cp3y = true
                                    settings.cp3m = false
                                    settings.cp3n = false
                                    settings.cp3 = 2
                                    check3 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp3y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .offset(x: -8)
                                
                                Spacer()
                                
                                Button("Maybe"){
                                    settings.cp3y = false
                                    settings.cp3m = true
                                    settings.cp3n = false
                                    settings.cp3 = 1
                                    check3 = true
                                }
                                .frame(width: 76, height: 27)
                                .background(settings.cp3m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.cp3y = false
                                    settings.cp3m = false
                                    settings.cp3n = true
                                    settings.cp3 = 0
                                    check3 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp3n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .offset(x: 8)
                                
                                Spacer()
                                Spacer()
                            }
                            
                            Text("Are you aware of the educational requirements for your desired career?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes") {
                                    settings.cp4y = true
                                    settings.cp4m = false
                                    settings.cp4n = false
                                    settings.cp4 = 2
                                    check4 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp4y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Somewhat"){
                                    settings.cp4y = false
                                    settings.cp4m = true
                                    settings.cp4n = false
                                    settings.cp4 = 1
                                    check4 = true
                                }
                                .frame(width: 100, height: 27)
                                .background(settings.cp4m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.cp4y = false
                                    settings.cp4m = false
                                    settings.cp4n = true
                                    settings.cp4 = 0
                                    check4 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp4n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                            }
                            
                            Text("Do you have a resume or portfolio ready for university applications?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes") {
                                    settings.cp5y = true
                                    settings.cp5m = false
                                    settings.cp5n = false
                                    settings.cp5 = 2
                                    check5 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp5y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Somewhat"){
                                    settings.cp5y = false
                                    settings.cp5m = true
                                    settings.cp5n = false
                                    settings.cp5 = 1
                                    check5 = true
                                }
                                .frame(width: 100, height: 27)
                                .background(settings.cp5m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.cp5y = false
                                    settings.cp5m = false
                                    settings.cp5n = true
                                    settings.cp5 = 0
                                    check5 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.cp5n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
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
                            
                            
                        }.navigationDestination(isPresented: $exit) {
                            MainScreenView()  // Your destination view
                        }

                            Spacer()
                                
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
                            
                            Text("7/8")
                                .font(Font.custom("Livvic", size: 21))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        }
                                
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                .frame(width: 64, height: 37)
                                .cornerRadius(15)
                            
                            NavigationLink(destination: RC_testView()){
                                Image(systemName: "arrow.right")
                                    .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                                    .font(.system(size: 30))
                            }.simultaneousGesture(TapGesture().onEnded{
                                if !settings.checkCP1 {
                                    settings.checkCP = checkall()
                                    settings.checkCP1 = true
                                } else {
                                    
                                }
                            })
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
    CP_testView()
}
