//
//  checkView.swift
//  Career_app
//
//  Created by Simonchik on 21.10.2024.
//

import SwiftUI

struct checkView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var settings = GlobalSettings.shared
    @ObservedObject var took = testPassed.shared
    
    @State private var warn = false
    @State private var retake = false
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 15) {
                    
                    Image("anima")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                        .frame(width: 420, height: 200)
                        .offset(x: 20, y: 10)
                    //NAME
                    ZStack {
                        Rectangle()
                            .frame(width: 300.0, height: 70.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                        
                        
                        Text("Your Results")
                            .font(Font.custom("Livvic-Regular", size: 35))
                            .lineLimit(0)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.54, green: 0.57, blue: 0.58))
                        
                        
                    }.navigationDestination(isPresented: $retake) {
                        R_testView()  // Your destination view
                    }
                    
                    
                    
                    
                    
                    Text(took.resultOne)
                        .padding()
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .font(Font.custom("Livvic", size: 18))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .frame(width: 380)
                    
                    Text(took.resultTwo)
                        .padding()
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .font(Font.custom("Livvic", size: 18))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .frame(width: 380)
                    
                    Spacer(minLength: 180)
                    
                    HStack{
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrow.left")
                        }
                        .frame(width: 60,height: 40)
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .font(.system(size: 30))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        
                        Spacer()
                        
                        Button("Retake the Test"){
                            warn.toggle()
                        }
                        .frame(width: 170, height: 40)
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .font(Font.custom("Livvic", size: 21))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .alert("Are you sure?", isPresented: $warn) {
                            
                            Button("Retake" ,role: .destructive){
                                retake.toggle()
                            }
                            
                        } message: {
                            Text("If you proceed to retake the test, your previous results will be deleted")
                        }
                        
     
                    }
                    .frame(width: 375)
                    .background(Image("1 экран")
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 100)
                        .padding(.bottom, 80)
                        .offset(y: -120))
                }
            }
        }.navigationBarHidden(true)
    }
}

#Preview {
    checkView()
}
