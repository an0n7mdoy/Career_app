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
    @State private var r: Int = 9
    @State private var i: Int = 9
    @State private var a: Int = 9
    @State private var s: Int = 9
    @State private var e: Int = 9
    @State private var c: Int = 9
    
    @State var resultStr = "result"
    
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
            Text("\(resultStr)")
            /// весь подсчет результатов будет одним if statement (то есть if и много много else if)
            /// 􀁞 все должо чекаться от большего к меньшему (сначала вариант где 6 максимальных(sortedNums), потом все варианты где 5, потом все варианты где 4, и тд) 􀁞
            
            // if Set(fourLargest.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s"]))
            /// это 􀄨 чекает что аррей состоит из конкретных елементов (типа 4 максимальных это [r, i, a, s] а не [e, s, c, i])
            
            // fourLargest.allSatisfy({ $0.value >= 7 })
            /// это 􀄨 чекает что все элементы в аррее больше или равны чему то (в этом случае семи)
            
            /// 􀄩 вот тебе образец всей этой веселухи, каждый иф чекает что в аррее конкретные элементы и что они все больше или равны 7. Удачи)
            
                
                
        }.onAppear(perform: {
            
            if sortedNums.allSatisfy({ $0.value >= 7 }) {
                resultStr = "6max"
            } else if sortedNums.allSatisfy({ $0.value <= 2 }) {
                Text("try again")
                // 5 letters
            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                Text("riase")
            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "c", "a", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RASEC")
            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "c", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RIAEC")
            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "c", "i", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RISEC")
            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["c", "i", "a", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                Text("IASEC")
            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s", "c"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RIASC")
                
                // 4 letters
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rias")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("riae")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RIAC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "s", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RISE")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "c", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RISC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "c", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RIEC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "e", "a", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RASE")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "s", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RASC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "e", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RAEC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "s", "c", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("RSEC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["e", "i", "a", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("IASE")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["s", "i", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("IASC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["e", "i", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("IAEC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["s", "i", "c", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ISEC")
            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["a", "s", "e", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ASEC")
                
                // 3 letters
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ria")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "s"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ris")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rie")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ric")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "a", "s"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ras")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "a", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rae")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "a", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rac")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "s", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rse")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "s", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rsc")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "e", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rec")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "a", "s"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ias")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "a", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("iae")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "a", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("iac")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "s", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ise")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "s", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("isc")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["a", "s", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ase")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["a", "s", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("asc")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["a", "e", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("aec")
            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["s", "e", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                Text("sec")
                
                // 2 letters
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "i"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ri")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "a"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ra")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "s"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rs")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "e"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("re")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("rc")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["i", "a"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ia")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["i", "s"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("is")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["i", "e"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ie")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["i", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ic")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["a", "s"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("as")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["a", "e"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ae")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["a", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ac")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["s", "e"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("se")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["s", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("sc")
            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["e", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                Text("ec")
                
                // 1 letter
            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["r"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                Text("r")
            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["i"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                Text("i")
            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["a"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                Text("a")
            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["s"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                Text("s")
            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["e"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                Text("e")
            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["c"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                Text("c")
            }
        })
            
            Spacer()
            
        }
    }


#Preview {
    resultView()
}
