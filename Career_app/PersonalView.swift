//
//  PersonalView.swift
//  CAS_1
//
//  Created by Simonchik on 14.05.2024.
//

import SwiftUI

struct PersonalView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isExpanded = false
    //@State private var items: [String] = ["Item 1", "Item 2", "Item 3"]
    @State private var newItem = ""
    @State private var newItem1 = ""
    
    @ObservedObject var list = lists.shared
    
    
    
    
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
            Image("catmain")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 250)
            .clipped()
            .offset(x: -20,y: 40)
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
            

                
            VStack() {
                    // Dropdown button
                    Button(action: {
                        withAnimation {
                            isExpanded.toggle()
                        }
                    }) {
                        HStack {
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 40.0, height: 30.0)
                                        .cornerRadius(15)
                                        .foregroundColor(.init(red: 0.702, green: 0.718, blue: 0.725))
                                    
                                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                                        .foregroundColor(.black)
                                }
                                
                                Spacer()
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 230.0, height: 30.0)
                                        .cornerRadius(15)
                                        .foregroundColor(.init(red: 0.702, green: 0.718, blue: 0.725))
                                    
                                    Text("Desired universities")
                                        .font(Font.custom("Livvic-Regular", size: 20))
                                        .foregroundColor(.black)
                                }
                            }
                            .frame(width: 250.0, height:45.0)
                        }
                        .frame(width: 300.0, height:45.0)
                        .background(Color(red: 0.831, green: 0.839, blue: 0.843))
                        .cornerRadius(15)
                    }
                    
                    // Dropdown list (conditionally displayed)
                    if isExpanded {
                        VStack(spacing: 15) {
                            ForEach(list.items, id: \.self) { item in
                                HStack {
                                    Text(item)
                                    Spacer()
                                    Button(action: {
                                        removeItem(item)
                                    }) {
                                    Image(systemName: "trash")
                                            .foregroundColor(.black)
                                    }
                                }
                                
                            }

                                // Add new item section
                            HStack {
                                TextField("Add university", text: $newItem)
                                    .font(Font.custom("Livvic-Regular", size: 20))
                                    .padding(7)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(15)
                                    
                                   
                                    
                                Button(action: {
                                    addItem()
                                }) {
                                    Text("Add")
                                        .font(Font.custom("Livvic-Regular", size: 18))
                                        .padding(.horizontal)
                                        .padding(.vertical, 8)
                                        .background(Color(red: 0.702, green: 0.718, blue: 0.725))
                                        .foregroundColor(.black)
                                        .cornerRadius(15)
                                }
                            }
                        }
                        .frame(width: 300.0)
                        .padding(.vertical, 10)
                        //.transition(.push(from: .bottom))
                    }
                }
            }
                
            
        
        Spacer()
        //goals
        
        
        VStack{
            HStack{
                
                ZStack{
                    Rectangle()
                        .frame(width: 90.0, height: 45.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                    }
                    .foregroundColor(.black)
                    .font(.system(size: 30))
                }
                
                //"goals"
                ZStack{
                    Rectangle()
                        .frame(width: 200.0, height: 45.0)
                        .cornerRadius(15)
                        .foregroundColor(.init(red: 0.534, green: 0.553, blue: 0.565))
                    
                    Text("Your Goals")
                        .font(Font.custom("Livvic-Regular", size: 25))
                }
                //prog
                
                
            }
            
            //list
            
            
            VStack {
                // Input Field for Adding New Items
                HStack {
                    TextField("", text: $newItem1)
                        .padding()
                        .frame(width: 250, height: 40)
                        .background(Color(.init(red: 0.831, green: 0.839, blue: 0.843)))
                        .cornerRadius(15)
                        .font(Font.custom("Livvic-Regular", size: 20))
                    Button(action: {
                        addItem1()
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.init(red: 0.831, green: 0.839, blue: 0.843))
                            .font(.largeTitle)
                    }
                }
                
                
                // List of Checklist Items
                List {
                    ForEach(list.items1.indices, id: \.self) { index in
                        HStack {
                            Image(systemName: list.items1[index].contains("Done!") ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    toggleItem(at: index)
                                }
                            Text(list.items1[index])
                        }.ignoresSafeArea()
                    }
                    .onDelete(perform: deleteItem)
                    .scrollContentBackground(.hidden)
                    .ignoresSafeArea()
                    .font(Font.custom("Livvic-Regular", size: 20))
                }
                .frame(width: 360)
                .ignoresSafeArea()
                .cornerRadius(15)
                .ignoresSafeArea()
                .scrollContentBackground(.hidden)
                
            }
        }.navigationBarHidden(true)
    }
    
    private func addItem1() {
            if !newItem1.isEmpty {
                list.items1.append(newItem1)
                newItem1 = ""
            }
    }
    
    
    func toggleItem(at index: Int) {
        if list.items1[index].contains("Done!") {
                list.items1[index] = list.items1[index].replacingOccurrences(of: "Done!", with: "")
            } else {
                list.items1[index] = list.items1[index] + " Done!"
            }
        }

        // Function to Delete an Item
    func deleteItem(at offsets: IndexSet) {
            list.items1.remove(atOffsets: offsets)
        }
    
    
    private func addItem() {
        if !newItem.isEmpty {
            list.items.append(newItem)
            newItem = ""
        }
    }
        
        // Remove item function
    private func removeItem(_ item: String) {
        list.items.removeAll { $0 == item }
    }
}

    
    


#Preview {
    PersonalView()
}
