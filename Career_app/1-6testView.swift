//
//  1-6testView.swift
//  Career_app
//
//  Created by настя п. on 11/07/2024.
//

import SwiftUI

struct __6testView: View {
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
         
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 364, height: 518.74799)
                    .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25))
                    .cornerRadius(8)
                
                
            }
        }
    }
}

#Preview {
    __6testView()
}
