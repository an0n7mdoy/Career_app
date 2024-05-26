//
//  button.swift
//  Career_app
//
//  Created by Simonchik on 27.05.2024.
//

import Foundation
import SwiftUI

struct ImageButtonStyle: ButtonStyle {
    var image: String
    var pressedImage: String

    func makeBody(configuration: Self.Configuration) -> some View {
      let displayImage = configuration.isPressed ? pressedImage : image
      return Image(displayImage, bundle: Bundle())
    }
}
