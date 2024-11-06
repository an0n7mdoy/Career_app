//
//  ContentView.swift
//  CAS_1
//
//  Created by Simonchik on 10.03.2024.
//

import SwiftUI

struct MainScreenView: View {
 
    @ObservedObject var sounds = soundVars.shared
    @State private var floatUp: Bool = false
    
    @ObservedObject var took = testPassed.shared
    
    var body: some View {
        NavigationStack{
            VStack (spacing: 10) {
           
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
          
            
            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 450, height: 305)
            .background(
            Image("catmain")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 250)
            .clipped()
            .offset(x: -20,y: 40)
            )
//NAME
                
            //Text("\(took.taken)")
                
            ZStack {
                Rectangle()
                    .frame(width: 300.0, height: 70.0)
                    .cornerRadius(15)
                    .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                
                
                if !took.taken{
                    NavigationLink(destination: testView()){
                        Text("Career Guidance Test")
                            .font(Font.custom("Livvic-Regular", size: 29))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.54, green: 0.57, blue: 0.58))
                    }
                } else {
                    NavigationLink(destination: checkView()){
                        Text("Your Results")
                            .font(Font.custom("Livvic-Regular", size: 35))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.54, green: 0.57, blue: 0.58))
                    }
                }
            }
            
            //Spacer()
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
                    
                        NavigationLink(destination: PersonalView()){
                            Text("Personal Account")
                                .font(Font.custom("Livvic-Regular", size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                    }
                    
                    
                }
            }
            
            
            
            //Spacer()
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
                    
                    NavigationLink(destination: DevView()){
                        Text("About Developers")
                            .font(Font.custom("Livvic-Regular", size: 25))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                    }
                    }
                }
                
                //Spacer(minLength: 10)
    //settings
            HStack{
    
                    
                    HStack{
                        
                        Text("Music")
                            .font(Font.custom("Livvic-Regular", size: 17))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                        
                        Button(action: {
                            sounds.musicButton.toggle()
                            if sounds.musicButton {
                                stopMusic()
                            }else if !sounds.musicButton {
                                resumeMusic()
                            }
                        }) {
                            Image(systemName: sounds.musicButton ? "speaker.slash" : "speaker.wave.3")
                                .foregroundColor(.black)
                                
                        }
                    }
                
            }
                
            }
            .onAppear(perform: {
                if !sounds.musicButton {
                    playSound(sound: "AppSound", type: "mp3") //start playing when opened if not disabled
                }
            
                print("View appeared, floatUp: \(floatUp)")
                if !floatUp {
                        floatUp.toggle()
                    }
                print("floatUp toggled to: \(floatUp)") // Log after toggle

                         // Start the animation
                    
            })
            .background(Image("anima")
                .resizable()
                .ignoresSafeArea()
                .frame(width: 400, height: 290)
                .aspectRatio(contentMode: .fill)
                .offset(x: 33)
                .offset(y: floatUp ? -240 : -190)
                .animation(.easeInOut(duration: 2).repeatForever(), value: floatUp)
               )
        }.navigationBarHidden(true)
    }
}

#Preview {
    MainScreenView()
}
