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
                
                //R + I + A
                if settings.R > settings.S && settings.R > settings.E && settings.R > settings.C && settings.I > settings.S && settings.I > settings.E && settings.I > settings.C && settings.A > settings.S && settings.A > settings.E && settings.A > settings.C{
                    Text("хуй")
                }
                
            }
            
        }
    }
}

#Preview {
    resultView()
}
