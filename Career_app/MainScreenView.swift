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
    
   
    
    var body: some View {
        NavigationStack{
            VStack {
           
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
//NAME
            ZStack {
                Rectangle()
                    .frame(width: 300.0, height: 70.0)
                    .cornerRadius(15)
                    .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                
                
                NavigationLink(destination: testView()){
                    Text("Career Guidance Test")
                        .font(Font.custom("Livvic-Regular", size: 29))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.54, green: 0.57, blue: 0.58))
                }
            }
            
            Spacer()
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
            
            Spacer()
//settings
            HStack{
                ZStack {
                    Rectangle()
                        .frame(width: 70.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Image("Group")
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 220.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    NavigationLink(destination: SettingsView()){
                        Text("Settings")
                            .font(Font.custom("Livvic-Regular", size: 25))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                    }
                }
            }
            
            Spacer()
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
            }
            .onAppear(perform: {
                if !sounds.musicButton {
                    playSound(sound: "AppSound", type: "mp3") //start playing when opened if not disabled
                }
            })
            .background(Image("back_holder")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
                .offset(y: floatUp ? -30 : 40)
                .animation(.easeInOut(duration: 2).repeatForever(), value: floatUp)
                .onAppear {
                    print("View appeared, floatUp: \(floatUp)")
                    if !floatUp {
                            floatUp.toggle()
                        }
                    print("floatUp toggled to: \(floatUp)") // Log after toggle

                     // Start the animation
                })
        }
    }
}

#Preview {
    MainScreenView()
}
