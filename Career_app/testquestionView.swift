//
//  testquestionView.swift
//  Career_app
//
//  Created by настя п. on 11/07/2024.
//

import SwiftUI

struct testquestionView: View {
    var body: some View {
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
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
         
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 364, height: 518.74799)
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                        .cornerRadius(8)
                    Text("1.\n\n2.\n\n3.\n\n4.\n\n")
                        .font(Font.custom("Livvic", size: 18))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .frame(width: 343, height: 491, alignment: .topLeading)
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                       
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 34, height: 64)
                                .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                                .cornerRadius(15)
                                .rotationEffect(Angle(degrees: -90))
                                .padding(.leading, 270.0)

                        }
                       
                                
                        }
                }
            }
        }
    }
}

#Preview {
    testquestionView()
}
