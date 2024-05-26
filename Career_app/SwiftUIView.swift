//
//  SwiftUIView.swift
//  Career_app
//
//  Created by Simonchik on 27.05.2024.
//

import SwiftUI

import SwiftUI

struct SwiftUIView: View {
    @State private var isButtonPressed = false

    var body: some View {
        Button(action: {
            isButtonPressed.toggle() // Toggle the button state
        }) {
            Image(systemName: isButtonPressed ? "heart.fill" : "heart")
                .font(.largeTitle)
                .foregroundColor(.red)
        }
        .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

#Preview {
    SwiftUIView()
}
