//
//  Career_appApp.swift
//  Career_app
//
//  Created by Simonchik on 26.05.2024.
//
/*
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
||| НАДО УБРАТЬ ПОВОРОТ И ИЗМЕНЕНИЕ РАЗМЕРА ТЕКСТА ||||
//////////////////////////////////////////////////////
*/


import SwiftUI

@main
struct Career_appApp: App {
    var body: some Scene {
        WindowGroup {
            MainScreenView()      
        }
    }
}

class GlobalSettings: ObservableObject{
    static let shared = GlobalSettings()
    
    @Published var R: Int = 0
    @Published var I: Int = 0
    @Published var A: Int = 0
    @Published var S: Int = 0
    @Published var E: Int = 0
    @Published var C: Int = 0
    
    private init() {}
}

struct ChecklistItem: Identifiable {
    let id = UUID()
    var text: String
    var isChecked: Bool = false
}
