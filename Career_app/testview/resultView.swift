//
//  resultView.swift
//  Career_app
//
//  Created by Simonchik on 27.07.2024.
//

import SwiftUI

struct resultView: View {
    
    @ObservedObject var settings = GlobalSettings.shared
    
    /// 􀄩 тестовые переменные чтобы чекать как все работает, потом удалить
    @State private var r: Int = 10
    @State private var i: Int = 9
    @State private var a: Int = 8
    @State private var s: Int = 8
    @State private var e: Int = 0
    @State private var c: Int = 0
    
    var body: some View {
        // 􀄩 в vars поменять r на settings.R и так далее
        let vars = [r, i, a, s, e, c]
        let varNames = ["r", "i", "a", "s", "e", "c"]
        // 􀄩 результаты становятся арреем типа [r 5, i 4, ...] чтобы после сортировки можно было понять какие баллы у какой категории
        let numberArray: [(value: Int, name: String)] = zip(vars, varNames).map { ($0.0, $0.1) }
        /// этот 􀄨 аррей с результатами сортируется 􀄩 от большего к меньшему
        let sortedNums = numberArray.sorted { $0.value > $1.value }
        /// 􀄩 от отсортированного аррея создается 5 арреев с один максимальным, двумя, и тд
        /// 􀄩 на желтые предупреждения насрать
        let oneLrg = Array(sortedNums.prefix(1))
        let twoLrg = Array(sortedNums.prefix(2))
        let threeLrg = Array(sortedNums.prefix(3))
        let fourLrg = Array(sortedNums.prefix(4))
        let fiveLrg = Array(sortedNums.prefix(5))
        
        Spacer()
        
        HStack(spacing: 20) {
           
            
            Text("r \(settings.R)")
            Text("i \(settings.I)")
            Text("a \(settings.A)")
            Text("s \(settings.S)")
            Text("e \(settings.E)")
            Text("c \(settings.C)")
   
            
        }
        
        Spacer()
        
        VStack{
            
            /// весь подсчет результатов будет одним if statement (то есть if и много много else if)
            /// 􀁞 все должо чекаться от большего к меньшему (сначала вариант где 6 максимальных(sortedNums), потом все варианты где 5, потом все варианты где 4, и тд) 􀁞
            
            // if Set(fourLargest.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s"]))
            /// это 􀄨 чекает что аррей состоит из конкретных елементов (типа 4 максимальных это [r, i, a, s] а не [e, s, c, i])
            
            // fourLargest.allSatisfy({ $0.value >= 7 })
            /// это 􀄨 чекает что все элементы в аррее больше или равны чему то (в этом случае семи)
            
            /// 􀄩 вот тебе образец всей этой веселухи, каждый иф чекает что в аррее конкретные элементы и что они все больше или равны 7. Удачи)
            
            if sortedNums.allSatisfy({ $0.value >= 7 }) {
                Text("6 max")
            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                Text("riase")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rias")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ria")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "i"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ri")
            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["r"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                Text("r")
            }
            
        }
        
        Spacer()
        
    }
}

#Preview {
    resultView()
}
