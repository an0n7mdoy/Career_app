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
import Combine

@main
struct Career_appApp: App {
    var body: some Scene {
        WindowGroup {
            MainScreenView()
                .environment(\.sizeCategory, .medium)
        }
    }
}

class GlobalSettings: ObservableObject{
    static let shared = GlobalSettings()
    
    @Published var checkR: Bool = true
    @Published var checkI: Bool = true
    @Published var checkA: Bool = true
    @Published var checkS: Bool = true
    @Published var checkE: Bool = true
    @Published var checkC: Bool = true
    @Published var checkCP: Bool = true
    @Published var checkRC: Bool = true
    
    @Published var checkR1: Bool = false
    @Published var checkI1: Bool = false
    @Published var checkA1: Bool = false
    @Published var checkS1: Bool = false
    @Published var checkE1: Bool = false
    @Published var checkC1: Bool = false
    @Published var checkCP1: Bool = false
    @Published var checkRC1: Bool = false
    
      
    
    @Published var R: Int = 0
    @Published var I: Int = 0
    @Published var A: Int = 0
    @Published var S: Int = 0
    @Published var E: Int = 0
    @Published var C: Int = 0
    @Published var CP: Int = 0
    @Published var RC: Int = 0
    
    //one buttton is on abd other are off
    
    @Published var r1 = 0 {
        didSet{
            SumR()
        }
    }
    @Published var r2 = 0 {
        didSet{
            SumR()
        }
    }
    @Published var r3 = 0 {
        didSet{
            SumR()
        }
    }
    @Published var r4 = 0 {
        didSet{
            SumR()
        }
    }
    @Published var r5 = 0 {
        didSet{
            SumR()
        }
    }
    
    private func SumR() {
            // Calculate the sum and update the @Published sum variable
            R = r1 + 
                r2 +
                r3 +
                r4 +
                r5
        }

    
    
    // yes/maybe/no a button become different
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
    
    //-yes/maybe/no a button become different
    
    @Published var i1 = 0 {
        didSet{
            SumI()
        }
    }
    @Published var i2 = 0 {
        didSet{
            SumI()
        }
    }
    @Published var i3 = 0 {
        didSet{
            SumI()
        }
    }
    @Published var i4 = 0 {
        didSet{
            SumI()
        }
    }
    @Published var i5 = 0 {
        didSet{
            SumI()
        }
    }
    
    private func SumI() {
            // Calculate the sum and update the @Published sum variable
            I = i1 +
                i2 +
                i3 +
                i4 +
                i5
        }
    
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
    
    //yes/maybe/no a button become different
    
    @Published var a1 = 0 {
        didSet{
            SumA()
        }
    }
    @Published var a2 = 0 {
        didSet{
            SumA()
        }
    }
    @Published var a3 = 0 {
        didSet{
            SumA()
        }
    }
    @Published var a4 = 0 {
        didSet{
            SumA()
        }
    }
    @Published var a5 = 0 {
        didSet{
            SumA()
        }
    }
    
    private func SumA() {
            // Calculate the sum and update the @Published sum variable
            A = a1 +
                a2 +
                a3 +
                a4 +
                a5
        }
    
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
    
    //yes/maybe/no a button become different
    
    @Published var s1 = 0 {
        didSet{
            SumS()
        }
    }
    @Published var s2 = 0 {
        didSet{
            SumS()
        }
    }
    @Published var s3 = 0 {
        didSet{
            SumS()
        }
    }
    @Published var s4 = 0 {
        didSet{
            SumS()
        }
    }
    @Published var s5 = 0 {
        didSet{
            SumS()
        }
    }
    
    private func SumS() {
            // Calculate the sum and update the @Published sum variable
            S = s1 +
                s2 +
                s3 +
                s4 +
                s5
        }
    
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
    
    //yes/maybe/no a button become different
    
    @Published var e1 = 0 {
        didSet{
            SumE()
        }
    }
    @Published var e2 = 0 {
        didSet{
            SumE()
        }
    }
    @Published var e3 = 0 {
        didSet{
            SumE()
        }
    }
    @Published var e4 = 0 {
        didSet{
            SumE()
        }
    }
    @Published var e5 = 0 {
        didSet{
            SumE()
        }
    }
    
    private func SumE() {
            // Calculate the sum and update the @Published sum variable
            E = e1 +
                e2 +
                e3 +
                e4 +
                e5
        }
    
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
    
    //yes/maybe/no a button become different 
    
    @Published var c1 = 0 {
        didSet{
            SumC()
        }
    }
    @Published var c2 = 0 {
        didSet{
            SumC()
        }
    }
    @Published var c3 = 0 {
        didSet{
            SumC()
        }
    }
    @Published var c4 = 0 {
        didSet{
            SumC()
        }
    }
    @Published var c5 = 0 {
        didSet{
            SumC()
        }
    }
    
    private func SumC() {
            // Calculate the sum and update the @Published sum variable
            C = c1 +
                c2 +
                c3 +
                c4 +
                c5
        }
    
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
    
    @Published var cp1 = 0 {
        didSet{
            SumCP()
        }
    }
    @Published var cp2 = 0 {
        didSet{
            SumCP()
        }
    }
    @Published var cp3 = 0 {
        didSet{
            SumCP()
        }
    }
    @Published var cp4 = 0 {
        didSet{
            SumCP()
        }
    }
    @Published var cp5 = 0 {
        didSet{
            SumCP()
        }
    }
    
    private func SumCP() {
            // Calculate the sum and update the @Published sum variable
            CP = cp1 +
                cp2 +
                cp3 +
                cp4 +
                cp5
        }
    
    @Published var cp1y = false
    @Published var cp1m = false
    @Published var cp1n = false
    @Published var cp2y = false
    @Published var cp2m = false
    @Published var cp2n = false
    @Published var cp3y = false
    @Published var cp3m = false
    @Published var cp3n = false
    @Published var cp4y = false
    @Published var cp4m = false
    @Published var cp4n = false
    @Published var cp5y = false
    @Published var cp5m = false
    @Published var cp5n = false
    
    @Published var rc1 = 0 {
        didSet{
            SumRC()
        }
    }
    @Published var rc2 = 0 {
        didSet{
            SumRC()
        }
    }
    @Published var rc3 = 0 {
        didSet{
            SumRC()
        }
    }
    @Published var rc4 = 0 {
        didSet{
            SumRC()
        }
    }
    @Published var rc5 = 0 {
        didSet{
            SumRC()
        }
    }
    
    private func SumRC() {
            // Calculate the sum and update the @Published sum variable
            RC = rc1 +
                rc2 +
                rc3 +
                rc4 +
                rc5
        }


    
    // yes/maybe/no a button become different
    @Published var rc1y = false
    @Published var rc1m = false
    @Published var rc1n = false
    @Published var rc2y = false
    @Published var rc2m = false
    @Published var rc2n = false
    @Published var rc3y = false
    @Published var rc3m = false
    @Published var rc3n = false
    @Published var rc4y = false
    @Published var rc4m = false
    @Published var rc4n = false
    @Published var rc5y = false
    @Published var rc5m = false
    @Published var rc5n = false
    
    
    private init() {}
    
}

class soundVars: ObservableObject{
    static let shared = soundVars()
    
    @Published var musicButton = false {
        didSet {
            UserDefaults.standard.set(musicButton, forKey: "musicButton")
        }
    }
    @Published var soundButton = false {
        didSet {
            UserDefaults.standard.set(soundButton, forKey: "soundButton")
        }
    }
    
   
    
    init() {
            // Load values from UserDefaults when the app starts
        
        self.musicButton = UserDefaults.standard.bool(forKey: "musicButton")
        self.soundButton = UserDefaults.standard.bool(forKey: "soundButton")
    }
}

class testPassed: ObservableObject{
    static let shared = testPassed()
    
    @Published var taken = false {
        didSet {
            UserDefaults.standard.set(taken, forKey: "taken")
        }
    }
    
    @Published var resultOne: String{
        didSet {
            UserDefaults.standard.set(resultOne, forKey: "resultOne")
        }
    }
    
    @Published var resultTwo: String{
        didSet {
            UserDefaults.standard.set(resultTwo, forKey: "resultTwo")
        }
    }
    
    init() {
            // Load values from UserDefaults when the app starts
        
        self.taken = UserDefaults.standard.bool(forKey: "taken")
        self.resultOne = UserDefaults.standard.string(forKey: "resultOne") ?? "nil"
        self.resultTwo = UserDefaults.standard.string(forKey: "resultTwo") ?? "nil"
        
    }
}

class lists: ObservableObject{
    static let shared = lists()
    
    @Published var items: [String] {
        didSet{
            UserDefaults.standard.set(items, forKey: "items")
        }
    }
    
    @Published var items1: [String] {
        didSet{
            UserDefaults.standard.set(items1, forKey: "items1")
        }
    }
    
    init() {
            // Load values from UserDefaults when the app starts
        
        self.items = UserDefaults.standard.stringArray(forKey: "items") ?? []
        self.items1 = UserDefaults.standard.stringArray(forKey: "items1") ?? []
        
    }
    
}

struct ChecklistItem: Identifiable {
    let id = UUID()
    var text: String
    var isChecked: Bool = false
}
