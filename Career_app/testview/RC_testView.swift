//
//  RC_testView.swift
//  Career_app
//
//  Created by Simonchik on 19.10.2024.
//

import SwiftUI

struct RC_testView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var settings = GlobalSettings.shared
    
    @State var ff: Bool = false
    
    @State private var warn = false
    @State private var exit = false
    
    @State private var check1 = false
    @State private var check2 = false
    @State private var check3 = false
    @State private var check4 = false
    @State private var check5 = false
    
    private func checkall() -> Bool {
        if check1 && check2 && check3 && check4 && check5 && !settings.checkRC1 {
            settings.checkRC1 = true
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
                            Text("How well do you handle changes or unexpected challenges in your career path?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                Text("\(settings.checkRC)")
                                
                                Button("Very") {
                                    settings.rc1y = true
                                    settings.rc1m = false
                                    settings.rc1n = false
                                    settings.rc1 = 2
                                    check1 = true
                                }
                                .frame(width: 50, height: 27)
                                .background(settings.rc1y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .offset(x: 5)
                                
                                Spacer()
                                
                                Button("Somewhat"){
                                    settings.rc1y = false
                                    settings.rc1m = true
                                    settings.rc1n = false
                                    settings.rc1 = 1
                                    check1 = true
                                }
                                .frame(width: 100, height: 27)
                                .background(settings.rc1m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Badly"){
                                    settings.rc1y = false
                                    settings.rc1m = false
                                    settings.rc1n = true
                                    settings.rc1 = 0
                                    check1 = true
                                }
                                .frame(width: 60, height: 27)
                                .background(settings.rc1n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                            }
                            
                            Text("Do you have clear career goals and a plan to achieve them?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .multilineTextAlignment(.leading)
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                
                                Button("Yes") {
                                    settings.rc2y = true
                                    settings.rc2m = false
                                    settings.rc2n = false
                                    settings.rc2 = 2
                                    check2 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.rc2y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Somewhat"){
                                    settings.rc2y = false
                                    settings.rc2m = true
                                    settings.rc2n = false
                                    settings.rc2 = 1
                                    check2 = true
                                }
                                .frame(width: 100, height: 27)
                                .background(settings.rc2m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.rc2y = false
                                    settings.rc2m = false
                                    settings.rc2n = true
                                    settings.rc2 = 0
                                    check2 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.rc2n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                            }
                            
                            Text("How often do you seek advice or mentorship regarding your career?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Often") {
                                    settings.rc3y = true
                                    settings.rc3m = false
                                    settings.rc3n = false
                                    settings.rc3 = 2
                                    check3 = true
                                }
                                .frame(width: 60, height: 27)
                                .background(settings.rc3y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Rarely"){
                                    settings.rc3y = false
                                    settings.rc3m = true
                                    settings.rc3n = false
                                    settings.rc3 = 1
                                    check3 = true
                                }
                                .frame(width: 70, height: 27)
                                .background(settings.rc3m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Never"){
                                    settings.rc3y = false
                                    settings.rc3m = false
                                    settings.rc3n = true
                                    settings.rc3 = 0
                                    check3 = true
                                }
                                .frame(width: 60, height: 27)
                                .background(settings.rc3n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                            }
                            
                            Text("Are you proactive in seeking opportunities to develop new skills?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes") {
                                    settings.rc4y = true
                                    settings.rc4m = false
                                    settings.rc4n = false
                                    settings.rc4 = 2
                                    check4 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.rc4y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Somewhat"){
                                    settings.rc4y = false
                                    settings.rc4m = true
                                    settings.rc4n = false
                                    settings.rc4 = 1
                                    check4 = true
                                }
                                .frame(width: 100, height: 27)
                                .background(settings.rc4m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.rc4y = false
                                    settings.rc4m = false
                                    settings.rc4n = true
                                    settings.rc4 = 0
                                    check4 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.rc4n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                Spacer()
                            }
                            
                            Text("Do you reflect on your career decisions and make adjustments as needed?")
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                .frame(width: 354.0, alignment: .topLeading)
                            
                            HStack{
                                
                                Spacer()
                                Spacer()
                                
                                Button("Yes") {
                                    settings.rc5y = true
                                    settings.rc5m = false
                                    settings.rc5n = false
                                    settings.rc5 = 2
                                    check5 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.rc5y ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("Somewhat"){
                                    settings.rc5y = false
                                    settings.rc5m = true
                                    settings.rc5n = false
                                    settings.rc5 = 1
                                    check5 = true
                                }
                                .frame(width: 100, height: 27)
                                .background(settings.rc5m ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                                Spacer()
                                
                                Button("No"){
                                    settings.rc5y = false
                                    settings.rc5m = false
                                    settings.rc5n = true
                                    settings.rc5 = 0
                                    check5 = true
                                }
                                .frame(width: 46, height: 27)
                                .background(settings.rc5n ? Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.65) : Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                                
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
                                .frame(width: 150, height: 37)
                                .cornerRadius(15)
                            
                           
                            
                            if checkall() || settings.checkR || settings.checkI || settings.checkA || settings.checkS || settings.checkE || settings.checkC || settings.checkCP{
                                
                                Button(action: {ff.toggle()} ){
                                    Text("Finish the Test")
                                        .font(Font.custom("Livvic", size: 21))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                }.alert("Please answer all of the questions before viewing the results", isPresented: $ff) {
                                    
                                    Button("OK") {
                                        // button 1 action will come here
                                    }
                                    

                                }
                                
                            } else {
                                
                                NavigationLink(destination: resultView()){
                                    Text("Finish the Test")
                                        .font(Font.custom("Livvic", size: 21))
                                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                }
                                
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
    RC_testView()
}
