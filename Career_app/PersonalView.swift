//
//  PersonalView.swift
//  CAS_1
//
//  Created by Simonchik on 14.05.2024.
//

import SwiftUI

struct PersonalView: View {
    
    @State private var items: [String] = []
    @State private var newItem = ""
    
    
    func addItem() {
            if !newItem.isEmpty {
                items.append(newItem)
                newItem = ""
            }
        }
    func toggleItem(at index: Int) {
            if items[index].contains("[DONE]") {
                items[index] = items[index].replacingOccurrences(of: "[DONE]", with: "")
            } else {
                items[index] = "[DONE] " + items[index]
            }
        }

        // Function to Delete an Item
    func deleteItem(at offsets: IndexSet) {
            items.remove(atOffsets: offsets)
        }
    
    var body: some View {
        
        VStack {
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 450, height: 305)
                .background(
                    Image("1 экран")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 450, height: 305)
                        .clipped()
                )
            
            
            
            Spacer()
//pers
            HStack{
                ZStack {
                    Rectangle()
                        .frame(width: 70.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Image("person")
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 220.0, height: 70.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Text("Personal account")
                        .font(Font.custom("Livvic-Regular", size: 25))
                    
                }
            }
            
            Spacer()
//unis
            ZStack {
                Rectangle()
                    .frame(width: 300.0, height:45.0)
                    .cornerRadius(15)
                    .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 40.0, height: 30.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.702, green: 0.718, blue: 0.725))
                        
                        Image("")
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 230.0, height: 30.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.702, green: 0.718, blue: 0.725))
                        
                        Text("Desired universities")
                            .font(Font.custom("Livvic-Regular", size: 20))
                    }
                    
                }
                
            }
                
            }
            Spacer()
//goals
            
                
            VStack{
                HStack{
                        //"goals"
                    ZStack{
                        Rectangle()
                            .frame(width: 100.0, height: 45.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                            
                        Text("Goals")
                            .font(Font.custom("Livvic-Regular", size: 25))
                    }
                        //prog
                    ZStack{
                        Rectangle()
                            .frame(width: 190.0, height: 45.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                            
                        HStack{
                            Rectangle()
                                .padding(.trailing, 65.0)
                                .frame(width: 180.0, height: 35.0)
                                .cornerRadius(13)
                                .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                                
                            }
                        }
                       
                        
                    }
                    
                    //list
                    
                       
            VStack {
                                   // Input Field for Adding New Items
                HStack {
                    TextField("", text: $newItem)
                        .padding()
                        .frame(width: 250, height: 40)
                        .background(Color(.init(red: 0.831, green: 0.839, blue: 0.843)))
                        .cornerRadius(15)
                    Button(action: {
                        addItem()
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                            .font(.largeTitle)
                            }
                        }
                        

// List of Checklist Items
                List {
                    ForEach(items.indices, id: \.self) { index in
                        HStack {
                            Image(systemName: items[index].contains("[DONE]") ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    toggleItem(at: index)
                                }
                            Text(items[index])
                        }.ignoresSafeArea()
                    }
                    .onDelete(perform: deleteItem)
                    .scrollContentBackground(.hidden)
                    .ignoresSafeArea()
                }
                .frame(width: 360)
                .ignoresSafeArea()
                .cornerRadius(15)
                .ignoresSafeArea()
                .scrollContentBackground(.hidden)
                
            }
        }
    }
}

#Preview {
    PersonalView()
}
