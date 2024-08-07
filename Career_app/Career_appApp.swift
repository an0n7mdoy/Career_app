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
    
    //------------------------
    
    @Published var r1 = false
    @Published var r2 = false
    @Published var r3 = false
    @Published var r4 = false
    @Published var r5 = false
    
    @Published var r1y = false
    @Published var r1m = false
    @Published var r1n = false
    @Published var r2y = false
    @Published var r2m = false
    @Published var r2n = false
    @Published var r3y = false
    @Published var r3m = false
    @Published var r3n = false
    @Published var r4y = false
    @Published var r4m = false
    @Published var r4n = false
    @Published var r5y = false
    @Published var r5m = false
    @Published var r5n = false
    
    //------------------------
    
    @Published var i1 = false
    @Published var i2 = false
    @Published var i3 = false
    @Published var i4 = false
    @Published var i5 = false
    
    @Published var i1y = false
    @Published var i1m = false
    @Published var i1n = false
    @Published var i2y = false
    @Published var i2m = false
    @Published var i2n = false
    @Published var i3y = false
    @Published var i3m = false
    @Published var i3n = false
    @Published var i4y = false
    @Published var i4m = false
    @Published var i4n = false
    @Published var i5y = false
    @Published var i5m = false
    @Published var i5n = false
    
    //------------------------
    
    @Published var a1 = false
    @Published var a2 = false
    @Published var a3 = false
    @Published var a4 = false
    @Published var a5 = false
    
    @Published var a1y = false
    @Published var a1m = false
    @Published var a1n = false
    @Published var a2y = false
    @Published var a2m = false
    @Published var a2n = false
    @Published var a3y = false
    @Published var a3m = false
    @Published var a3n = false
    @Published var a4y = false
    @Published var a4m = false
    @Published var a4n = false
    @Published var a5y = false
    @Published var a5m = false
    @Published var a5n = false
    
    //------------------------
    
    @Published var s1 = false
    @Published var s2 = false
    @Published var s3 = false
    @Published var s4 = false
    @Published var s5 = false
    
    @Published var s1y = false
    @Published var s1m = false
    @Published var s1n = false
    @Published var s2y = false
    @Published var s2m = false
    @Published var s2n = false
    @Published var s3y = false
    @Published var s3m = false
    @Published var s3n = false
    @Published var s4y = false
    @Published var s4m = false
    @Published var s4n = false
    @Published var s5y = false
    @Published var s5m = false
    @Published var s5n = false
    
    //------------------------
    
    @Published var e1 = false
    @Published var e2 = false
    @Published var e3 = false
    @Published var e4 = false
    @Published var e5 = false
    
    @Published var e1y = false
    @Published var e1m = false
    @Published var e1n = false
    @Published var e2y = false
    @Published var e2m = false
    @Published var e2n = false
    @Published var e3y = false
    @Published var e3m = false
    @Published var e3n = false
    @Published var e4y = false
    @Published var e4m = false
    @Published var e4n = false
    @Published var e5y = false
    @Published var e5m = false
    @Published var e5n = false
    
    //------------------------
    
    @Published var c1 = false
    @Published var c2 = false
    @Published var c3 = false
    @Published var c4 = false
    @Published var c5 = false
    
    @Published var c1y = false
    @Published var c1m = false
    @Published var c1n = false
    @Published var c2y = false
    @Published var c2m = false
    @Published var c2n = false
    @Published var c3y = false
    @Published var c3m = false
    @Published var c3n = false
    @Published var c4y = false
    @Published var c4m = false
    @Published var c4n = false
    @Published var c5y = false
    @Published var c5m = false
    @Published var c5n = false
    
    private init() {}
}

struct ChecklistItem: Identifiable {
    let id = UUID()
    var text: String
    var isChecked: Bool = false
}
