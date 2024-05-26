//
//  ImageButton.swift
//  Career_app
//
//  Created by Simonchik on 27.05.2024.
//

import SwiftUI

struct ImageButton: View {
    
    var image: String
    var pressedImage: String
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) { }
            .buttonStyle(ImageButtonStyle(image: image, pressedImage: pressedImage)
    }
}
#Preview {
    ImageButton()
}
