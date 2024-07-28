//
//  resultView.swift
//  Career_app
//
//  Created by Simonchik on 27.07.2024.
//

import SwiftUI

struct resultView: View {
    
    @ObservedObject var settings = GlobalSettings.shared
    
    var body: some View {
        HStack{
            VStack{
                Text("r   \(settings.R)")
                Text("i   \(settings.I)")
                Text("a   \(settings.A)")
                Text("s   \(settings.S)")
                Text("e   \(settings.E)")
                Text("c   \(settings.C)")
                

            }
            
        }
    }
}

#Preview {
    resultView()
}
